class HomeController < ApplicationController
  def top
    player_id = 1
    @player = UserMaster.find_by("user_id = ?" , player_id)
    @naisei_job = NaiseiJob.find_by("user_id = ?" , player_id)

    if @naisei_job.end_flag == 0
      run_naisei_id = @naisei_job.naisei_id
      run_naisei = NaiseiMaster.find_by("naisei_id = ?" , run_naisei_id)
      @run_naisei_name = run_naisei.naisei_name_j

      levelup_time = @naisei_job.time
      start_time = @naisei_job.start_time
      now_time = Time.now

      progress_time = now_time - start_time

      if levelup_time > progress_time
        @complete_flag = 1
        @run_naisei_remain_time = levelup_time - progress_time
      else
        @complete_flag = 0
      end
    end
  end

  def kaikon

    player_id = params[:player_id]
    player = UserMaster.find_by("user_id = ?" , player_id)
    kaikon_lv_from = player.kaikon_lv
    kaikon_lv_to = kaikon_lv_from + 1

    kaikon_info = NaiseiKaikonMaster.find_by("level = ?" , kaikon_lv_to)
    kaikon_time = kaikon_info.time
    kaikon_cost = kaikon_info.cost

    #kaikonに必要なcostをmoneyから減額
    #（未実装）所持金とコストを比較してマイナスになる場合はエラー画面を表示する
    remain_money = player.money - kaikon_cost
    player.money = remain_money
    player.save

    #NaiseiJobテーブルにKaikonレベルアップジョブレコードを挿入
    player_job = NaiseiJob.find_by("user_id = ?" , player_id)

    kaikon_master= NaiseiMaster.find_by("naisei_name = ?" , "kaikon")
    kaikon_id = kaikon_master.naisei_id

    player_job.naisei_id = kaikon_id
    player_job.level_up = kaikon_lv_to
    player_job.time = kaikon_time
    player_job.start_time = DateTime.now
    player_job.end_flag = 0

    player_job.save

  end

  def chisui

    player_id = params[:player_id]
    player = UserMaster.find_by("user_id = ?" , player_id)
    chisui_lv_from = player.chisui_lv
    chisui_lv_to = chisui_lv_from + 1

    chisui_info = NaiseiChisuiMaster.find_by("level = ?" , chisui_lv_to)
    chisui_time = chisui_info.time
    chisui_cost = chisui_info.cost

    #chisuiに必要なcostをmoneyから減額
    #（未実装）所持金とコストを比較してマイナスになる場合はエラー画面を表示する
    remain_money = player.money - chisui_cost
    player.money = remain_money
    player.save

    #NaiseiJobテーブルにChisuiレベルアップジョブレコードを挿入
    player_job = NaiseiJob.find_by("user_id = ?" , player_id)

    chisui_master= NaiseiMaster.find_by("naisei_name = ?" , "chisui")
    chisui_id = chisui_master.naisei_id

    player_job.naisei_id = chisui_id
    player_job.level_up = chisui_lv_to
    player_job.time = chisui_time
    player_job.start_time = DateTime.now
    player_job.end_flag = 0

    player_job.save

  end

  def levelup

    player_id = params[:player_id]
    naisei_id = params[:naisei_id].to_i
    level_up = params[:level_up]

    player = UserMaster.find_by("user_id = ?" , player_id)

    if naisei_id == 1
      player.kaikon_lv = level_up
    elsif naisei_id == 2
      player.chisui_lv = level_up
    end

    player.save

    player_job = NaiseiJob.find_by("user_id = ?" , player_id)
    player_job.end_flag = 1
    player_job.save

    naisei_name = NaiseiMaster.find_by("naisei_id = ?" , naisei_id)
    @complete_naisei_name = naisei_name.naisei_name_j
    @complete_level = level_up

  end

end
