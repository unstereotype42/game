class CreateNaiseiJobs < ActiveRecord::Migration
  def change
    create_table :naisei_jobs do |t|
      t.integer :user_id
      t.integer :naisei_id
      t.integer :level_up
      t.datetime :start_time
      t.integer :time
      t.integer :end_flag

      t.timestamps null: false
    end
  end
end
