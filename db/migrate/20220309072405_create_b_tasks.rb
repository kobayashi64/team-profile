class CreateBTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :b_tasks do |t|
      t.integer :job_start
      t.integer :sending_media
      t.integer :status_change
      t.integer :alarm_support
      t.integer :failure_contact
      t.references :user,		            null: false, foreign_key: true
      t.timestamps
    end
  end
end
