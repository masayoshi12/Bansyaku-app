class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '２０代' },
    { id: 3, name: '３０代' },
    { id: 4, name: '４０代' },
    { id: 5, name: '５０代' },
    { id: 6, name: '６０代' },
    { id: 7, name: '７０代' },
  ]
  include ActiveHash::Associations
  has_many :users
end