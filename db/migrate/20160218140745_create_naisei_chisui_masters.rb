class CreateNaiseiChisuiMasters < ActiveRecord::Migration
  def change
    create_table :naisei_chisui_masters do |t|
      t.integer :level
      t.integer :cost
      t.integer :time

      t.timestamps null: false
    end
  end
end
