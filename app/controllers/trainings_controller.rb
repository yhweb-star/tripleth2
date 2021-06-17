class TrainingsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end

  def meal_params
    params.require(:training).permit(:title, :text, :image, :genre_id).merge(user_id: current_user.id)
  end

end
