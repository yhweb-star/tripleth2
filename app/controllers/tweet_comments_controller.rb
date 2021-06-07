class TweetCommentsController < ApplicationController
  def create
    TweetComment.create(comment_params)
  end

  private
  def comment_params
    params.require(:tweet_comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
