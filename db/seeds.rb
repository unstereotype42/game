# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
NaiseiMaster.create(:naisei_id => 1, :naisei_name => "kaikon", :naisei_name_j => "開墾")
NaiseiMaster.create(:naisei_id => 2, :naisei_name => "chisui", :naisei_name_j => "治水")
NaiseiKaikonMaster.create(:level => 1, :cost => 100, :time => 60)
NaiseiKaikonMaster.create(:level => 2, :cost => 200, :time => 120)
NaiseiKaikonMaster.create(:level => 3, :cost => 300, :time => 180)
NaiseiChisuiMaster.create(:level => 1, :cost => 150, :time => 90)
NaiseiChisuiMaster.create(:level => 2, :cost => 250, :time => 150)
NaiseiChisuiMaster.create(:level => 3, :cost => 350, :time => 210)
UserMaster.create(:user_id => 1, :user_name => "八幡", :money => 5000, :kaikon_lv => 0, :chisui_lv => 0)
NaiseiJob.create(:user_id => 1, :end_flag => 1)
