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

ActiveRecord::Schema.define(version: 20141021231231) do

  create_table "countries", force: true do |t|
    t.string "name"
  end

  create_table "country_supplies", force: true do |t|
    t.integer  "country_id"
    t.integer  "supply_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "country_supplies", ["country_id"], name: "index_country_supplies_on_country_id"
  add_index "country_supplies", ["supply_id"], name: "index_country_supplies_on_supply_id"

  create_table "messages", force: true do |t|
    t.datetime "created_at"
    t.string   "number"
    t.string   "text"
    t.integer  "direction"
  end

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.integer  "country_id"
    t.integer  "user_id"
    t.integer  "request_id"
    t.integer  "supply_id"
    t.integer  "response_id"
    t.string   "delivery_method"
    t.datetime "duplicated_at"
  end

  create_table "phones", force: true do |t|
    t.datetime "created_at"
    t.integer  "user_id"
    t.string   "number"
    t.string   "condensed"
  end

  create_table "requests", force: true do |t|
    t.datetime "created_at"
    t.integer  "country_id"
    t.integer  "user_id"
    t.integer  "message_id"
    t.text     "text"
    t.integer  "entered_by"
  end

  create_table "responses", force: true do |t|
    t.datetime "created_at"
    t.integer  "country_id"
    t.integer  "user_id"
    t.integer  "message_id"
    t.string   "extra_text"
    t.datetime "archived_at"
  end

  create_table "supplies", force: true do |t|
    t.string "shortcode"
    t.string "name"
  end

  add_index "supplies", ["shortcode"], name: "index_supplies_on_shortcode"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "pcv_id"
    t.integer  "country_id"
    t.integer  "role"
    t.string   "location"
    t.string   "time_zone"
    t.datetime "waiting_since"
    t.datetime "last_requested_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
