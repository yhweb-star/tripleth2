class Meal < ApplicationRecord
  belongs_to :user
  has_many :meal_comments
  has_one_attached :image
end
