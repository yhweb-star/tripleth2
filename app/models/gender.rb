class Gender < ActiveHash::Base
  self.data = [
    { id: 0, name: '選択して下さい' },
    { id: 1, name: '男' },
    { id: 2, name: '女' }
  ]

  include ActiveHash::Associations
  has_many :users
  
end