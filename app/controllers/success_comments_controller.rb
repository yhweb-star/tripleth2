class SuccessCommentsController < ApplicationController
  def create
    comment = SuccessComment.create(comment_params)
    redirect_to success_path(comment.success.id)
  end

  private
  def comment_params
    params.require(:success_comment).permit(:text).merge(user_id: current_user.id, success_id: params[:success_id])
  end
end
