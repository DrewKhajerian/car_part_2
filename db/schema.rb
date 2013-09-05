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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130807184048) do

  create_table "cars", :force => true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "image"
    t.string   "seats"
    t.string   "transmission"
    t.string   "drive_train"
    t.string   "fuel_type"
    t.string   "towing"
    t.string   "ride_handling"
    t.string   "head_room"
    t.string   "leg_room"
    t.string   "shoulder_room"
    t.string   "trunk_space"
    t.string   "reliability"
    t.string   "bump_to_bump"
    t.string   "war_power"
    t.string   "war_rust"
    t.string   "safety"
    t.string   "vehicle_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "horsepower"
    t.integer  "cylinders"
    t.string   "consumer_rec"
    t.float    "acceleration"
    t.float    "fuel_consumption"
    t.float    "price"
  end

  create_table "surveys", :force => true do |t|
    t.string   "seats"
    t.string   "transmission"
    t.string   "drive_train"
    t.string   "fuel_type"
    t.string   "fuel_consumption"
    t.string   "towing"
    t.string   "ride_handling"
    t.string   "head_room"
    t.string   "leg_room"
    t.string   "shoulder_room"
    t.string   "trunk_space"
    t.string   "reliability"
    t.string   "bump_to_bump"
    t.string   "war_power"
    t.string   "war_rust"
    t.string   "safety"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "acceleration"
    t.string   "vehicle_type"
    t.integer  "min_price"
    t.integer  "max_price"
    t.integer  "horsepower"
    t.string   "cylinders"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                     :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

end
