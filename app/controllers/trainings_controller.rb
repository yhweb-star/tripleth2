class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      redirect_to trainings_path
    else
      render :new
    end
  end

  def show
    @training = Training.find(params[:id])
    @comment = TrainingComment.new
    @comments = @training.training_comments.includes(:user)
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to trainings_path
  end

  private

  def training_params
    params.require(:training).permit(:title, :text, :image, :genre_id).merge(user_id: current_user.id)
  end

end
