class AddColumnsToCTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :c_tasks, :c_certification_id, :integer, from: nil, to: 2
  end
end
