class ExerciseStyle < ActiveHash::Base
  self.data = [
    { id: 0, name: '選択して下さい' },
    { id: 1, name: '運動しない' },
    { id: 2, name: '軽い運動や散歩をしている' },
    { id: 3, name: '活発な運動習慣を持っている' }
  ]

  include ActiveHash::Associations
  has_many :users
end