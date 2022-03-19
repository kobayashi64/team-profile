class ChangeColumnDefaultToCTasks < ActiveRecord::Migration[6.0]
  def change
    change_column_default :c_tasks, :c_certification_id, from: nil, to: 1
  end
end
