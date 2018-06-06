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

ActiveRecord::Schema.define(version: 2018_06_06_012048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "photo"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collaboration_items", force: :cascade do |t|
    t.bigint "collaboration_id"
    t.bigint "matched_user_gratitude_id"
    t.bigint "matching_user_gratitude_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collaboration_id"], name: "index_collaboration_items_on_collaboration_id"
    t.index ["matched_user_gratitude_id"], name: "index_collaboration_items_on_matched_user_gratitude_id"
    t.index ["matching_user_gratitude_id"], name: "index_collaboration_items_on_matching_user_gratitude_id"
  end

  create_table "collaborations", force: :cascade do |t|
    t.string "status"
    t.integer "length", default: 30
    t.bigint "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_collaborations_on_match_id"
  end

  create_table "gratitudes", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.string "description"
    t.bigint "category_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "collaboration_id"
    t.boolean "match_status", default: false
    t.index ["category_id"], name: "index_gratitudes_on_category_id"
    t.index ["collaboration_id"], name: "index_gratitudes_on_collaboration_id"
    t.index ["user_id"], name: "index_gratitudes_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "matching_gratitude_id"
    t.bigint "matched_gratitude_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matched_gratitude_id"], name: "index_matches_on_matched_gratitude_id"
    t.index ["matching_gratitude_id"], name: "index_matches_on_matching_gratitude_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "photo"
    t.integer "membership_cents", default: 0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "collaboration_items", "collaborations"
  add_foreign_key "collaborations", "matches"
  add_foreign_key "gratitudes", "categories"
  add_foreign_key "gratitudes", "collaborations"
  add_foreign_key "gratitudes", "users"
end
