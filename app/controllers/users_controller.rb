class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_area = Area.find(@user.chara.area_id)
    @user_gender = Gender.find(@user.chara.area_id)
    @tweets = @user.tweets
    @meals = @user.meals
    @trainings = @user.trainings
    @successes = @user.successes

    #@instances = (@tweets + @meals + @trainings + @successes).sort_by {|record| record.created_at}.reverse!

    @instances = @tweets | @meals | @trainings | @successes
    @instances.sort!{ |a, b| b.created_at <=> a.created_at }
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def tweet
    @user = User.find(params[:id])
    @user_area = Area.find(@user.chara.area_id)
    @user_gender = Gender.find(@user.chara.area_id)
    @tweets = @user.tweets
  end

  def meal
    @user = User.find(params[:id])
    @user_area = Area.find(@user.chara.area_id)
    @user_gender = Gender.find(@user.chara.area_id)
    @meals = @user.meals
  end

  def training
    @user = User.find(params[:id])
    @user_area = Area.find(@user.chara.area_id)
    @user_gender = Gender.find(@user.chara.area_id)
    @trainings = @user.trainings
  end

  def success
    @user = User.find(params[:id])
    @user_area = Area.find(@user.chara.area_id)
    @user_gender = Gender.find(@user.chara.area_id)
    @successes = @user.successes
  end

end
