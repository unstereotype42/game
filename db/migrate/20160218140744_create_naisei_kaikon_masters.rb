class CreateNaiseiKaikonMasters < ActiveRecord::Migration
  def change
    create_table :naisei_kaikon_masters do |t|
      t.integer :level
      t.integer :cost
      t.integer :time

      t.timestamps null: false
    end
  end
end
