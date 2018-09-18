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

ActiveRecord::Schema.define(version: 20180623134944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "c_name"
    t.bigint "ruler_id"
    t.bigint "dynasty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "c_image_file_name"
    t.string "c_image_content_type"
    t.integer "c_image_file_size"
    t.datetime "c_image_updated_at"
    t.index ["dynasty_id"], name: "index_cities_on_dynasty_id"
    t.index ["ruler_id"], name: "index_cities_on_ruler_id"
  end

  create_table "coins", force: :cascade do |t|
    t.string "co_titel"
    t.bigint "ruler_id"
    t.bigint "dynasty_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "co_image_vs_file_name"
    t.string "co_image_vs_content_type"
    t.integer "co_image_vs_file_size"
    t.datetime "co_image_vs_updated_at"
    t.string "co_image_rs_file_name"
    t.string "co_image_rs_content_type"
    t.integer "co_image_rs_file_size"
    t.datetime "co_image_rs_updated_at"
    t.bigint "year_id"
    t.index ["city_id"], name: "index_coins_on_city_id"
    t.index ["dynasty_id"], name: "index_coins_on_dynasty_id"
    t.index ["ruler_id"], name: "index_coins_on_ruler_id"
    t.index ["year_id"], name: "index_coins_on_year_id"
  end

  create_table "dynasties", force: :cascade do |t|
    t.string "dy_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "dy_image_file_name"
    t.string "dy_image_content_type"
    t.integer "dy_image_file_size"
    t.datetime "dy_image_updated_at"
  end

  create_table "newfounds", force: :cascade do |t|
    t.string "dynasty"
    t.string "ruler"
    t.string "city"
    t.string "year"
    t.float "weight"
    t.string "locality"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nf_image_rs_file_name"
    t.string "nf_image_rs_content_type"
    t.integer "nf_image_rs_file_size"
    t.datetime "nf_image_rs_updated_at"
    t.string "nf_image_vs_file_name"
    t.string "nf_image_vs_content_type"
    t.integer "nf_image_vs_file_size"
    t.datetime "nf_image_vs_updated_at"
  end

  create_table "rulers", force: :cascade do |t|
    t.string "ru_name"
    t.bigint "dynasty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ru_image_file_name"
    t.string "ru_image_content_type"
    t.integer "ru_image_file_size"
    t.datetime "ru_image_updated_at"
    t.index ["dynasty_id"], name: "index_rulers_on_dynasty_id"
  end

  create_table "years", force: :cascade do |t|
    t.string "period"
    t.bigint "ruler_id"
    t.bigint "dynasty_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ye_image_file_name"
    t.string "ye_image_content_type"
    t.integer "ye_image_file_size"
    t.datetime "ye_image_updated_at"
    t.index ["city_id"], name: "index_years_on_city_id"
    t.index ["dynasty_id"], name: "index_years_on_dynasty_id"
    t.index ["ruler_id"], name: "index_years_on_ruler_id"
  end

  add_foreign_key "cities", "dynasties"
  add_foreign_key "cities", "rulers"
  add_foreign_key "coins", "cities"
  add_foreign_key "coins", "dynasties"
  add_foreign_key "coins", "rulers"
  add_foreign_key "coins", "years"
  add_foreign_key "rulers", "dynasties"
  add_foreign_key "years", "cities"
  add_foreign_key "years", "dynasties"
  add_foreign_key "years", "rulers"
end
