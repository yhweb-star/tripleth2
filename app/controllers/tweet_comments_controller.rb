class TweetCommentsController < ApplicationController
  def create
    comment = TweetComment.create(comment_params)
    redirect_to tweet_path(comment.tweet.id)
  end

  private
  def comment_params
    params.require(:tweet_comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
