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

ActiveRecord::Schema.define(version: 20151120033003) do

  create_table "case_types", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cases", force: :cascade do |t|
    t.integer  "product_id"
    t.decimal  "quantity_in_case"
    t.date     "expiration_date"
    t.integer  "location_id"
    t.integer  "case_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "cases", ["case_type_id"], name: "index_cases_on_case_type_id"
  add_index "cases", ["location_id"], name: "index_cases_on_location_id"
  add_index "cases", ["product_id"], name: "index_cases_on_product_id"

  create_table "customers", force: :cascade do |t|
    t.text     "company"
    t.text     "address1"
    t.text     "address2"
    t.text     "city"
    t.text     "state"
    t.integer  "zip",         limit: 8
    t.integer  "phone",       limit: 8
    t.text     "contactname"
    t.boolean  "active"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "external_systems", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_item_statuses", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "upc",                  limit: 8
    t.decimal  "quantity"
    t.integer  "order_item_status_id"
    t.integer  "order_id"
    t.decimal  "quantity_picked"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"
  add_index "order_items", ["order_item_status_id"], name: "index_order_items_on_order_item_status_id"

  create_table "order_statuses", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.datetime "deliverydate"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "external_order_id",   limit: 8
    t.datetime "external_order_date"
    t.integer  "external_system_id"
    t.integer  "order_status_id"
    t.integer  "customer_id"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"
  add_index "orders", ["external_system_id"], name: "index_orders_on_external_system_id"
  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id"

  create_table "products", force: :cascade do |t|
    t.text     "name"
    t.integer  "upc",         limit: 8
    t.integer  "customer_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "products", ["customer_id"], name: "index_products_on_customer_id"

  create_table "settings", force: :cascade do |t|
    t.text     "setting"
    t.text     "setting_value"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
