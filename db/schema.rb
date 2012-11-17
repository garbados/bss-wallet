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

ActiveRecord::Schema.define(:version => 20121117191619) do

  create_table "consumers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.integer  "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "coupons", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "merchants", :force => true do |t|
    t.string   "store_name"
    t.string   "rep_first_name"
    t.string   "rep_last_name"
    t.string   "email"
    t.string   "address_st_1"
    t.string   "address_st_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "offers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "coupon_value"
    t.integer  "num_coupons"
    t.integer  "point_value"
    t.decimal  "bid_value"
    t.date     "offer_expiration_date"
    t.date     "coupon_expiration_date"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

end
