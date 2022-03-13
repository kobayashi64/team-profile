class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :a_certification_id, :integer
    add_column :users, :b_certification_id, :integer
    add_column :users, :c_certification_id, :integer
  end
end
