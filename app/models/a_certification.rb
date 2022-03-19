class ACertification < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: '実施中' }, { id: 3, name: 'A認定取得済' }
  ]

  include ActiveHash::Associations
  has_many :a_tasks
end
