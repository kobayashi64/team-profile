class AddTelephoneNumberToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :telephone_number, :string
  end
end
