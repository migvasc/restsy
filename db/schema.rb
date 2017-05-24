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

ActiveRecord::Schema.define(version: 20170524040949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appwebexemps", force: :cascade do |t|
    t.string   "nome"
    t.string   "id_seq"
    t.text     "endereco"
    t.decimal  "preco"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.string   "foods"
    t.float    "calories"
    t.string   "description"
    t.string   "string"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "menu_x_meals", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "meal_id"
    t.string   "periodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menu_x_meals", ["meal_id"], name: "index_menu_x_meals_on_meal_id", using: :btree
  add_index "menu_x_meals", ["menu_id"], name: "index_menu_x_meals_on_menu_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "menus", ["customer_id"], name: "index_menus_on_customer_id", using: :btree

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "menu_id"
    t.string   "active"
    t.string   "boolean"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "subscriptions", ["customer_id"], name: "index_subscriptions_on_customer_id", using: :btree
  add_index "subscriptions", ["menu_id"], name: "index_subscriptions_on_menu_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "menu_x_meals", "meals"
  add_foreign_key "menu_x_meals", "menus"
  add_foreign_key "menus", "customers"
  add_foreign_key "subscriptions", "customers"
  add_foreign_key "subscriptions", "menus"
end
