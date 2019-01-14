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

ActiveRecord::Schema.define(version: 20190113222820) do

  create_table "characteristics", force: :cascade do |t|
    t.string   "name"
    t.integer  "points"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crimes", force: :cascade do |t|
    t.string   "player"
    t.boolean  "is_player"
    t.date     "crime_date"
    t.text     "description"
    t.string   "crime_type"
    t.integer  "crime_level",      default: 0
    t.boolean  "suspension"
    t.date     "suspension_date"
    t.integer  "suspension_games", default: 0
    t.string   "url"
    t.integer  "points"
    t.integer  "nflteam_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["nflteam_id"], name: "index_crimes_on_nflteam_id"
  end

  create_table "elements", force: :cascade do |t|
    t.integer  "crime_id"
    t.integer  "characteristic_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["characteristic_id"], name: "index_elements_on_characteristic_id"
    t.index ["crime_id"], name: "index_elements_on_crime_id"
  end

  create_table "missions", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "quest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quest_id"], name: "index_missions_on_quest_id"
    t.index ["team_id"], name: "index_missions_on_team_id"
  end

  create_table "nflteams", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "image_file_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "picks", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "nflteam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nflteam_id"], name: "index_picks_on_nflteam_id"
    t.index ["team_id"], name: "index_picks_on_team_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "week"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "season"
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "wkpicks", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "nflteam_id"
    t.integer  "week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nflteam_id"], name: "index_wkpicks_on_nflteam_id"
    t.index ["team_id"], name: "index_wkpicks_on_team_id"
  end

end
