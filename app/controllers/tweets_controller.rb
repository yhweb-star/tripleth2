class TweetsController < ApplicationController
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
    params.require(:tweet).permit(:text, :image).merge(user_id: current_user.id)
  end

end
