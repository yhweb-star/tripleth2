class Success < ApplicationRecord
  belongs_to :user
  has_many :success_comments
  has_one_attached :image
end
