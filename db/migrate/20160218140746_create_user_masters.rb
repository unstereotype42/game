class CreateUserMasters < ActiveRecord::Migration
  def change
    create_table :user_masters do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :money
      t.integer :kaikon_lv
      t.integer :chisui_lv

      t.timestamps null: false
    end
  end
end
