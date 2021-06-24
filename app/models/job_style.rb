class JobStyle < ActiveHash::Base
  self.data = [
    { id: 0, name: '選択して下さい' },
    { id: 1, name: '座り仕事' },
    { id: 2, name: '立ち仕事・移動が多い仕事' },
  ]

  include ActiveHash::Associations
  has_many :users
end