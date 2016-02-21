# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160221073822) do

  create_table "naisei_chisui_masters", force: :cascade do |t|
    t.integer  "level"
    t.integer  "cost"
    t.integer  "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "naisei_jobs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "naisei_id"
    t.integer  "level_up"
    t.datetime "start_time"
    t.integer  "time"
    t.integer  "end_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "naisei_kaikon_masters", force: :cascade do |t|
    t.integer  "level"
    t.integer  "cost"
    t.integer  "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "naisei_masters", force: :cascade do |t|
    t.integer  "naisei_id"
    t.string   "naisei_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "naisei_name_j"
  end

  create_table "user_masters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "user_name"
    t.integer  "money"
    t.integer  "kaikon_lv"
    t.integer  "chisui_lv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
