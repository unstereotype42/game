class AddNaiseiNameJToNaiseiMaster < ActiveRecord::Migration
  def change
    add_column :naisei_masters, :naisei_name_j, :string
  end
end
