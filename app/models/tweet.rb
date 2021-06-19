class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_comments
  has_one_attached :image
  has_rich_text :text

  with_options presence: true do
    validates :text
    validates :image
  end

  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end

end
