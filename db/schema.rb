# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_30_163553) do

  create_table "carts", force: :cascade do |t|
    t.integer "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_carts_on_users_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "animal"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "categories_id"
    t.string "description"
    t.string "image"
    t.integer "price"
    t.boolean "stock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categories_id"], name: "index_items_on_categories_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "users_id", null: false
    t.integer "items_id", null: false
    t.integer "quantity"
    t.string "status"
    t.string "purchaseDate"
    t.string "arriveDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["items_id"], name: "index_purchases_on_items_id"
    t.index ["users_id"], name: "index_purchases_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "country"
    t.string "province"
    t.string "address"
    t.integer "ZIP"
    t.integer "phone"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "carts", "users", column: "users_id"
  add_foreign_key "items", "categories", column: "categories_id"
  add_foreign_key "purchases", "items", column: "items_id"
  add_foreign_key "purchases", "users", column: "users_id"
end
