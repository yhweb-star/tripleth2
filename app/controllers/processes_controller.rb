class ProcessesController < ApplicationController
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
    params.require(:process).permit(:tiile, :text, :image, :genre_id).merge(user_id: current_user.id)
  end

end
