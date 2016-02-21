class ChangeColumnToNaiseiJob < ActiveRecord::Migration
  def up
    change_column :naisei_jobs, :start_time, :datetime
  end
  def down
    change_column :naisei_jobs, :start_time, :time
  end
end
