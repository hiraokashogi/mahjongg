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

ActiveRecord::Schema.define(version: 20130728060422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_titles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user1"
    t.integer  "user2"
    t.integer  "user3"
    t.integer  "user4"
    t.integer  "default_point"
    t.integer  "back_point"
  end

  create_table "times_games", force: true do |t|
    t.integer  "point"
    t.string   "sta"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_parent"
    t.integer  "game_titles_id"
    t.integer  "user1"
    t.integer  "user2"
    t.integer  "user3"
    t.integer  "user4"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "it_parent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
