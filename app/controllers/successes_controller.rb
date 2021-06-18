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
    @success = Success.find(params[:id])
    @comment = SuccessComment.new
    @comments = @success.success_comments.includes(:user)
  end

  def destroy
    @success = Success.find(params[:id])
    @success.destroy
    redirect_to successes_path
  end

  private

  def success_params
    params.require(:success).permit(:title, :text, :image, :genre_id).merge(user_id: current_user.id)
  end

end
