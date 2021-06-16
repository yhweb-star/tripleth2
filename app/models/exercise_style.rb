class ExerciseStyle < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '運動しない' },
    { id: 3, name: '軽い運動や散歩をしている' },
    { id: 4, name: '活発な運動習慣を持っている' }
  ]

  include ActiveHash::Associations
  has_many :users
end