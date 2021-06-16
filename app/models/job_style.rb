class JobStyle < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '座り仕事' },
    { id: 3, name: '立ち仕事・移動が多い仕事' },
  ]

  include ActiveHash::Associations
  has_many :users
end