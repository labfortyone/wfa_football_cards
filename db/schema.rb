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

ActiveRecord::Schema.define(version: 20140328111205) do

  create_table "attribute_players", force: true do |t|
    t.integer  "attribute_id"
    t.integer  "player_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attributes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "card_codes", force: true do |t|
    t.integer  "card_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.string   "name"
    t.integer  "type_player"
    t.integer  "attribute_enhanced"
    t.integer  "qtd_enhanced"
    t.string   "description"
    t.string   "rarity"
    t.boolean  "unique_use"
    t.integer  "coach_lvl_required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "code_players", force: true do |t|
    t.integer  "code_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "code_players", ["player_id", "code_id"], name: "index_code_players_on_player_id_and_code_id", unique: true, using: :btree

  create_table "players", force: true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.integer  "type_player"
    t.boolean  "injury"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.integer  "user_id"
    t.string   "team_name"
    t.string   "coach_name"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_players", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
