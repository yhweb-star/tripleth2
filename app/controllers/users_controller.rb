class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :meal, :training, :success]

  def show
    @tweets = @user.tweets
  end

  def edit
  end

  def update
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
    @user_gender = Gender.find(@user.chara.gender_id)
  end

end
