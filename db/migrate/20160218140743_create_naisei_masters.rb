class CreateNaiseiMasters < ActiveRecord::Migration
  def change
    create_table :naisei_masters do |t|
      t.integer :naisei_id
      t.integer :naisei_name

      t.timestamps null: false
    end
  end
end
