class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Meal' },
    { id: 3, name: 'Training' },
    { id: 4, name: 'Success' }
  ]

  include ActiveHash::Associations
  has_many :meals
  has_many :trainings
  has_many :successes
end
