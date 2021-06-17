class Meal < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area

  belongs_to :user
  has_many :meal_comments
  has_one_attached :image
end
