class CreateATasks < ActiveRecord::Migration[6.0]
  def change
    create_table :a_tasks do |t|
      t.integer :operation_handover_material
      t.integer :incident_handover_material
      t.integer :failure_flow
      t.references :user,	null: false, foreign_key: true
      t.timestamps
    end
  end
end
