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

ActiveRecord::Schema.define(:version => 20110819090340) do

  create_table "artists", :force => true do |t|
    t.string   "email",                                 :default => "",   :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "phone"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "featured",                              :default => true
  end

  add_index "artists", ["email"], :name => "index_artists_on_email", :unique => true
  add_index "artists", ["reset_password_token"], :name => "index_artists_on_reset_password_token", :unique => true

  create_table "artworks", :force => true do |t|
    t.string   "artist_id"
    t.string   "name"
    t.text     "description"
    t.string   "image_uid"
    t.string   "image_name"
    t.boolean  "downloadable"
    t.boolean  "physical_being_delivered"
    t.string   "delivering_to"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "auction_physical"
    t.float    "auction_reserve_price"
    t.text     "dimensions"
  end

  create_table "bidders", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bidders", ["email"], :name => "index_bidders_on_email", :unique => true
  add_index "bidders", ["reset_password_token"], :name => "index_bidders_on_reset_password_token", :unique => true

  create_table "bids", :force => true do |t|
    t.integer  "bidder_id"
    t.integer  "artwork_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
