class MealCommentsController < ApplicationController
  def create
    MealComment.create(comment_params)
  end

  private
  def comment_params
    params.require(:meal_comment).permit(:text).merge(user_id: current_user.id, meal_id: params[:meal_id])
  end
end
