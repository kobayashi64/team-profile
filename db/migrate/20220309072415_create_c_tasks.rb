class CreateCTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :c_tasks do |t|
      t.integer :card_lending
      t.integer :get_log
      t.integer :surveillance_monitor
      t.integer :check_the_log
      t.integer :job_confirmation
      t.references  :user,		            null: false, foreign_key: true
      t.timestamps
    end
  end
end
