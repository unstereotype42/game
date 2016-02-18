class ChangeColumnToNaiseiMaster < ActiveRecord::Migration
  def up
    change_column :naisei_masters, :naisei_name, :string
  end

  # 変更前の状態
  def down
    change_column :naisei_masters, :naisei_name, :integer
  end
end
