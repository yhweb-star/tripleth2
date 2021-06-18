class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end

  def show
    @meal = Meal.find(params[:id])
    @comment = MealComment.new
    @comments = @meal.meal_comments.includes(:user)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path
  end

  def meal_params
    params.require(:meal).permit(:title, :text, :genre_id).merge(user_id: current_user.id)
  end

end
