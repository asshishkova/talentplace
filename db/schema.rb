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

ActiveRecord::Schema.define(version: 2022_02_28_122632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.bigint "talent_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["talent_id"], name: "index_availabilities_on_talent_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.string "message"
    t.datetime "date"
    t.bigint "talent_id", null: false
    t.bigint "place_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_bookings_on_place_id"
    t.index ["talent_id"], name: "index_bookings_on_talent_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "place_genres", force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "place_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_place_genres_on_genre_id"
    t.index ["place_id"], name: "index_place_genres_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.string "website"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_places_on_email", unique: true
    t.index ["reset_password_token"], name: "index_places_on_reset_password_token", unique: true
  end

  create_table "promotions", force: :cascade do |t|
    t.string "message"
    t.bigint "place_id", null: false
    t.bigint "talent_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_promotions_on_place_id"
    t.index ["talent_id"], name: "index_promotions_on_talent_id"
  end

  create_table "talent_genres", force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "talent_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_talent_genres_on_genre_id"
    t.index ["talent_id"], name: "index_talent_genres_on_talent_id"
  end

  create_table "talents", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.string "youtube_link"
    t.string "instagram_link"
    t.string "spotify_link"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_talents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_talents_on_reset_password_token", unique: true
  end

  add_foreign_key "availabilities", "talents"
  add_foreign_key "bookings", "places"
  add_foreign_key "bookings", "talents"
  add_foreign_key "place_genres", "genres"
  add_foreign_key "place_genres", "places"
  add_foreign_key "promotions", "places"
  add_foreign_key "promotions", "talents"
  add_foreign_key "talent_genres", "genres"
  add_foreign_key "talent_genres", "talents"
end
