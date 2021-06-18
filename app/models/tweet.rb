class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_comments
  has_one_attached :image

  with_options presence: true do
    validates :text
    validates :image
  end
end
