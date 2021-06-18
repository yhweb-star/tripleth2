class Meal < ApplicationRecord
  belongs_to :user
  has_many :meal_comments
  has_rich_text :text

  with_options presence: true do
    validates :title
    validates :text
    with_options numericality: { other_than: 1 } do
      validates :genre_id
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

end
