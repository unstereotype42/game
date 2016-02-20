class HomeController < ApplicationController
  def top
    player_id = 1
    @player = UserMaster.find_by("user_id = ?" , player_id)
    @jobflag = NaiseiJob.find_by("user_id = ?" , player_id)
    p @jobflag.end_flag
  end
end
