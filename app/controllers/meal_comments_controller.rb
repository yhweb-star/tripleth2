class MealCommentsController < ApplicationController
  def create
    comment = MealComment.create(comment_params)
    redirect_to meal_path(comment.meal.id)
  end

  private
  def comment_params
    params.require(:meal_comment).permit(:text).merge(user_id: current_user.id, meal_id: params[:meal_id])
  end
end
