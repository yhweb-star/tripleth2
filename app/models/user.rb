class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # アソシエーション
  has_one :chara
  has_one :person
  has_many :tweets

  # バリデーション
  validates :name, presence: true
end
