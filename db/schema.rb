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

ActiveRecord::Schema[7.0].define(version: 2024_09_02_050111) do
  create_table "comments", charset: "utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "drawing_id", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drawing_id"], name: "index_comments_on_drawing_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "drawings", charset: "utf8", force: :cascade do |t|
    t.text "image_data", null: false
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", charset: "utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "drawing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drawing_id"], name: "index_likes_on_drawing_id"
    t.index ["user_id", "drawing_id"], name: "index_likes_on_user_id_and_drawing_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "family_name_kana", null: false
    t.string "first_name_kana", null: false
    t.date "birth_day", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "comments", "drawings"
  add_foreign_key "comments", "users"
  add_foreign_key "likes", "drawings"
  add_foreign_key "likes", "users"
end
