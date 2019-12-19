# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_06_010210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "partner_requests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "partner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["partner_id"], name: "index_partner_requests_on_partner_id"
    t.index ["user_id"], name: "index_partner_requests_on_user_id"
  end

  create_table "partnerships", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "partner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["partner_id"], name: "index_partnerships_on_partner_id"
    t.index ["user_id"], name: "index_partnerships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "partner_requests", "users"
  add_foreign_key "partner_requests", "users", column: "partner_id"
  add_foreign_key "partnerships", "users"
  add_foreign_key "partnerships", "users", column: "partner_id"
end
