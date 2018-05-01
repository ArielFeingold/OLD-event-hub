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

ActiveRecord::Schema.define(version: 2018_05_01_174635) do

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.integer "meetup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "event_day"
    t.integer "event_month"
    t.integer "event_year"
    t.integer "artist_id"
    t.integer "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_users", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_events_users_on_event_id"
    t.index ["user_id"], name: "index_events_users_on_user_id"
  end

  create_table "meetups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "meeting_location"
    t.time "meeting_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
  end

  create_table "meetups_users", force: :cascade do |t|
    t.integer "meetup_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meetup_id"], name: "index_meetups_users_on_meetup_id"
    t.index ["user_id"], name: "index_meetups_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "about"
    t.date "birthday"
    t.string "username"
    t.string "password_digets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
