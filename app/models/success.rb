class Success < ApplicationRecord
  belongs_to :user
  has_many :success_comments
end
