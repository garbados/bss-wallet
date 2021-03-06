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

ActiveRecord::Schema.define(:version => 20121128171938) do

  create_table "consumers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "zip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "consumers", ["email"], :name => "index_consumers_on_email", :unique => true
  add_index "consumers", ["reset_password_token"], :name => "index_consumers_on_reset_password_token", :unique => true

  create_table "coupons", :force => true do |t|
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "consumer_id"
    t.integer  "offer_id"
    t.string   "state",       :default => "active", :null => false
  end

  add_index "coupons", ["offer_id", "consumer_id"], :name => "index_coupons_on_offer_id_and_consumer_id", :unique => true

  create_table "merchants", :force => true do |t|
    t.string   "store_name"
    t.string   "rep_first_name"
    t.string   "rep_last_name"
    t.string   "address_st_1"
    t.string   "address_st_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "merchants", ["email"], :name => "index_merchants_on_email", :unique => true
  add_index "merchants", ["reset_password_token"], :name => "index_merchants_on_reset_password_token", :unique => true

  create_table "offers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "coupon_value"
    t.integer  "num_coupons"
    t.integer  "point_value"
    t.decimal  "bid_value"
    t.date     "offer_expiration_date"
    t.date     "coupon_expiration_date"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "merchant_id"
    t.integer  "num_views",              :default => 0, :null => false
    t.integer  "num_clicks",             :default => 0, :null => false
  end

end
