class SuccessesController < ApplicationController
  def index
    @successes = Success.all
  end

  def new
    @success = Success.new
  end

  def create
    @success = Success.new(success_params)
    if @success.save
      redirect_to successes_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
  end

  def success_params
    params.require(:success).permit(:title, :text, :image, :genre_id).merge(user_id: current_user.id)
  end

end
