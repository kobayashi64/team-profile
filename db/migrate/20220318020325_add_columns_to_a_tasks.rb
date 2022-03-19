class AddColumnsToATasks < ActiveRecord::Migration[6.0]
  def change
    add_column :a_tasks, :a_certification_id, :integer, from: nil, to: 2
  end
end
