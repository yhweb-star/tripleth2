class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :gender
  belongs_to :job_style
  belongs_to :exercise_style

  with_options presence: true do
    validates :name
    validates :prtext
    validates :age
    validates :height
    validates :weight
    validates :goal
    with_options numericality: { other_than: 1 } do
      validates :area_id
      validates :gender_id
      validates :job_style_id
      validates :exercise_style_id
    end
  end

  has_many :checks
  has_many :tweets
  has_many :tweet_comments
  has_many :meals
  has_many :meal_comments
  has_many :trainings
  has_many :training_comments
  has_many :successes
  has_many :success_comments
  has_many_attached :images

end
