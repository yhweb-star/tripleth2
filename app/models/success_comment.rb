class SuccessComment < ApplicationRecord
  belongs_to :user
  belongs_to :success
end
