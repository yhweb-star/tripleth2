class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :tweet, :meal, :training, :success]

  def show
    @tweets = @user.tweets
    @meals = @user.meals
    @trainings = @user.trainings
    @successes = @user.successes

    @instances = @tweets | @meals | @trainings | @successes
    @instances.sort!{ |a, b| b.created_at <=> a.created_at }
  end

  def edit
  end

  def update
  end

  def tweet
    @tweets = @user.tweets
  end

  def meal
    @meals = @user.meals
  end

  def training
    @trainings = @user.trainings
  end

  def success
    @successes = @user.successes
  end

  private
  def set_user
    @user = User.find(params[:id])
    @user_area = Area.find(@user.chara.area_id)
    @user_gender = Gender.find(@user.chara.area_id)
  end

end
