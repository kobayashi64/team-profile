class Group < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: 'Aグループ' }, { id: 3, name: 'Bグループ' },
    { id: 4, name: 'Cグループ' }, { id: 5, name: 'Dグループ' }, { id: 6, name: 'Eグループ' }
  ]

  include ActiveHash::Associations
  belongs_to :user
end
