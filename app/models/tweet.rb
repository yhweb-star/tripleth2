class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_comments
  has_one_attached :image
end
