class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # アソシエーション
  has_one :chara
  has_one :person
  has_many :tweets
  has_many :tweet_comments
  has_many :meals
  has_many :meal_comments
  has_many :trainings
  has_many :training_comments
  has_many :successes
  has_many :success_comments
  has_many :checks

  # バリデーション
  validates :name, presence: true
end
