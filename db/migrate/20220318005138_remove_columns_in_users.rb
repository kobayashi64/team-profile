class RemoveColumnsInUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :a_certification_id, :integer
    remove_column :users, :b_certification_id, :integer
    remove_column :users, :c_certification_id, :integer
  end
end
