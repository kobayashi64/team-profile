class AddColumnsToBTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :b_tasks, :b_certification_id, :integer, from: nil, to: 2
  end
end
