class Person < ApplicationRecord
  # アソシエーション
  belongs_to :user, optional: true
  has_one_attached :avatar
  has_one_attached :body

  # バリデーション
  with_options presence: true do
    validates :height
    validates :weight
    validates :goal
    # validates :avatar
    # validates :body
  end
end
