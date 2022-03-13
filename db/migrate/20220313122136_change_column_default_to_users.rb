class ChangeColumnDefaultToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :a_certification_id, from: nil, to: 1
    change_column_default :users, :b_certification_id, from: nil, to: 1
    change_column_default :users, :c_certification_id, from: nil, to: 1
  end
end
