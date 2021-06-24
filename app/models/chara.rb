class Chara < ApplicationRecord
  # アソシエーション
  belongs_to :user, optional: true
  # has_one_attached :avatar

  extend ActiveHash::Asociations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :gender
  belongs_to :job_style
  belongs_to :exercise_style

  # バリデーション
  with_options presence: true do
    validates :text
    validates :age
    with_options numericality: { other_than: 0, message: '選択して下さい' } do
      validates :area_id
      validates :gender_id
      validates :job_style_id
      validates :exercise_style_id
    end
  end
end
