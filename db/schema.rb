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

ActiveRecord::Schema[7.1].define(version: 2024_07_26_140619) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bar_games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bar_id", null: false
    t.bigint "game_id", null: false
    t.index ["bar_id"], name: "index_bar_games_on_bar_id"
    t.index ["game_id"], name: "index_bar_games_on_game_id"
  end

  create_table "bars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "address"
    t.string "description"
    t.string "phone_number"
    t.integer "number_of_tables"
    t.integer "number_of_seats"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_bars_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "user_id", null: false
    t.bigint "bar_game_id"
    t.index ["bar_game_id"], name: "index_bookings_on_bar_game_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "label"
    t.string "description"
    t.string "game_time"
    t.boolean "available"
    t.integer "numbre_of_players"
    t.integer "minimum_players"
    t.integer "maximum_players"
    t.integer "rentale_price_cents"
    t.string "image_link"
    t.string "barcode"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "favourite_game"
    t.string "location"
    t.string "phone_number"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bar_games", "bars"
  add_foreign_key "bar_games", "games"
  add_foreign_key "bars", "users"
  add_foreign_key "bookings", "users"
end
