class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :alea
  belongs_to :gender

  with_options numericality: { other_than: 1 } do
    validates :alea_id
    validates :gender_id
  end

   has_many :tweets
   has_many :tweet_comments
   has_many :meals
   has_many :meal_comments
   has_many :trainings
   has_many :training_comments
   has_many :successes
   has_many :success_comments

end
