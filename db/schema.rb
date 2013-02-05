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

ActiveRecord::Schema.define(:version => 20130205190653) do

  create_table "agents", :force => true do |t|
    t.string   "email",                                 :null => false
    t.string   "encrypted_password",                    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "agents", ["email"], :name => "index_agents_on_email", :unique => true
  add_index "agents", ["reset_password_token"], :name => "index_agents_on_reset_password_token", :unique => true

  create_table "appointments", :force => true do |t|
    t.string "date"
    t.string "hour"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["id"], :name => "index_categories_on_id"

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.text     "history"
    t.text     "notes"
    t.integer  "adults"
    t.integer  "children"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "user_id"
  end

  create_table "donors", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "donor_id"
    t.string   "product_id"
  end

  add_index "donors", ["id"], :name => "index_donors_on_id"

  create_table "events", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "name"
    t.date     "published_on"
    t.text     "content"
    t.date     "expiration_date"
    t.string   "product_id"
    t.string   "client_id"
    t.string   "start_time"
    t.string   "end_time"
  end

  add_index "events", ["id"], :name => "index_events_on_id"

  create_table "levels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "levels", ["id"], :name => "index_levels_on_id"

  create_table "maintenances", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "picked_ups", :force => true do |t|
    t.string   "product_id"
    t.string   "pickup_list_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "pickup_list_products", :force => true do |t|
    t.integer  "product_id"
    t.integer  "pickup_list_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "pickup_list_products", ["pickup_list_id"], :name => "index_pickup_list_products_on_pickup_list_id"
  add_index "pickup_list_products", ["product_id"], :name => "index_pickup_list_products_on_product_id"

  create_table "pickup_lists", :force => true do |t|
    t.string   "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "product_id"
  end

  add_index "pickup_lists", ["id"], :name => "index_pickup_lists_on_id"

  create_table "products", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "name"
    t.string   "location"
    t.float    "price"
    t.boolean  "inventory"
    t.boolean  "delivery"
    t.boolean  "pickup"
    t.boolean  "accepted"
    t.boolean  "declined"
    t.text     "reason"
    t.string   "event_id"
    t.string   "category_id"
    t.string   "pickup_list_id"
    t.integer  "donor_id"
  end

  add_index "products", ["id"], :name => "index_products_on_id"
  add_index "products", ["name"], :name => "index_products_on_name"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :null => false
    t.string   "encrypted_password",                    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "role_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "wish_list_items", :force => true do |t|
    t.string   "category_id"
    t.string   "product_id"
    t.boolean  "available"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
