class TrainingCommentsController < ApplicationController
  def create
    comment = TrainingComment.create(comment_params)
    redirect_to training_path(comment.training.id)
  end

  private
  def comment_params
    params.require(:training_comment).permit(:text).merge(user_id: current_user.id, training_id: params[:training_id])
  end
end
