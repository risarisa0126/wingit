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

ActiveRecord::Schema.define(version: 2020_01_07_114704) do

  create_table "able_to_guide_places", force: :cascade do |t|
    t.integer "guide_id"
    t.string "guide_place", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_able_to_guide_places_on_guide_id"
    t.index ["guide_place"], name: "index_able_to_guide_places_on_guide_place"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "tourist_id"
    t.integer "guide_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_favorites_on_guide_id"
    t.index ["tourist_id"], name: "index_favorites_on_tourist_id"
  end

  create_table "guide_native_countries", force: :cascade do |t|
    t.integer "guide_id"
    t.string "guide_country", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_country"], name: "index_guide_native_countries_on_guide_country"
    t.index ["guide_id"], name: "index_guide_native_countries_on_guide_id"
  end

  create_table "guide_native_launguages", force: :cascade do |t|
    t.integer "guide_id"
    t.string "guide_language", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_guide_native_launguages_on_guide_id"
    t.index ["guide_language"], name: "index_guide_native_launguages_on_guide_language"
  end

  create_table "guide_pictures", force: :cascade do |t|
    t.integer "guide_id"
    t.string "guide_no_picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_guide_pictures_on_guide_id"
  end

  create_table "guide_practicing_launguages", force: :cascade do |t|
    t.integer "guide_id"
    t.string "guide_practicing", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_guide_practicing_launguages_on_guide_id"
    t.index ["guide_practicing"], name: "index_guide_practicing_launguages_on_guide_practicing"
  end

  create_table "guides", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "guide_firstname", null: false
    t.string "guide_lastname", null: false
    t.string "guide_username", null: false
    t.integer "guide_gender", null: false
    t.string "guide_age", null: false
    t.string "guide_profile_image_id", null: false
    t.text "guide_about_me", null: false
    t.datetime "daysofweek", null: false
    t.datetime "deleted_at"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_guides_on_confirmation_token", unique: true
    t.index ["daysofweek"], name: "index_guides_on_daysofweek"
    t.index ["email"], name: "index_guides_on_email", unique: true
    t.index ["guide_age"], name: "index_guides_on_guide_age"
    t.index ["guide_gender"], name: "index_guides_on_guide_gender"
    t.index ["reset_password_token"], name: "index_guides_on_reset_password_token", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.integer "room_id"
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_messages_on_room_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "tourist_id"
    t.integer "guide_id"
    t.text "comment", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_reviews_on_guide_id"
    t.index ["tourist_id"], name: "index_reviews_on_tourist_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "tourist_id"
    t.integer "guide_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_rooms_on_guide_id"
    t.index ["tourist_id"], name: "index_rooms_on_tourist_id"
  end

  create_table "tourist_native_countries", force: :cascade do |t|
    t.integer "tourist_id"
    t.string "tourist_country", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tourist_country"], name: "index_tourist_native_countries_on_tourist_country"
    t.index ["tourist_id"], name: "index_tourist_native_countries_on_tourist_id"
  end

  create_table "tourist_native_launguages", force: :cascade do |t|
    t.integer "tourist_id"
    t.string "tourist_language", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tourist_id"], name: "index_tourist_native_launguages_on_tourist_id"
    t.index ["tourist_language"], name: "index_tourist_native_launguages_on_tourist_language"
  end

  create_table "tourist_pictures", force: :cascade do |t|
    t.integer "tourist_id"
    t.string "picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tourist_id"], name: "index_tourist_pictures_on_tourist_id"
  end

  create_table "tourist_practicing_launguages", force: :cascade do |t|
    t.integer "tourist_id"
    t.string "tourist_practicing", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tourist_id"], name: "index_tourist_practicing_launguages_on_tourist_id"
    t.index ["tourist_practicing"], name: "index_tourist_practicing_launguages_on_tourist_practicing"
  end

  create_table "tourist_sightseeing_places", force: :cascade do |t|
    t.integer "tourist_id"
    t.string "sightseeing_place", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sightseeing_place"], name: "index_tourist_sightseeing_places_on_sightseeing_place"
    t.index ["tourist_id"], name: "index_tourist_sightseeing_places_on_tourist_id"
  end

  create_table "tourists", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "tourist_firstname", null: false
    t.string "tourist_lastname", null: false
    t.string "tourist_username", null: false
    t.integer "tourist_gender", null: false
    t.string "tourist_age", null: false
    t.string "tourist_profile_image_id", null: false
    t.text "tourist_about_me", null: false
    t.datetime "fromdate", null: false
    t.datetime "todate", null: false
    t.datetime "deleted_at"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_tourists_on_confirmation_token", unique: true
    t.index ["email"], name: "index_tourists_on_email", unique: true
    t.index ["fromdate"], name: "index_tourists_on_fromdate"
    t.index ["reset_password_token"], name: "index_tourists_on_reset_password_token", unique: true
    t.index ["todate"], name: "index_tourists_on_todate"
    t.index ["tourist_age"], name: "index_tourists_on_tourist_age"
    t.index ["tourist_gender"], name: "index_tourists_on_tourist_gender"
  end

end
