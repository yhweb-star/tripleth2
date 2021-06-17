class Success < ApplicationRecord
  belongs_to :user
  has_many :success_comments
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :text
    validates :image
    with_options numericality: { other_than: 1 } do
      validates :genre_id
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

end
