class SuccessCommentsController < ApplicationController
  def create
    SuccessComment.create(comment_params)
  end

  private
  def comment_params
    params.require(:success_comment).permit(:text).merge(user_id: current_user.id, training_id: params[:training_id])
  end
end
