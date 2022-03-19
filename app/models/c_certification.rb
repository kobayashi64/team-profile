class CCertification < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: '実施中' }, { id: 3, name: 'C認定取得済' }
  ]

  include ActiveHash::Associations
  has_many :c_tasks
end
