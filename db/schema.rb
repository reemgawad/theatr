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

ActiveRecord::Schema[7.0].define(version: 2022_12_13_165523) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.integer "question_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "activity_type"
    t.string "level"
  end

  create_table "activity_questions", force: :cascade do |t|
    t.string "question_text"
    t.string "response_text"
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_activity_questions_on_activity_id"
  end

  create_table "badges", force: :cascade do |t|
    t.integer "status"
    t.bigint "user_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_badges_on_activity_id"
    t.index ["user_id"], name: "index_badges_on_user_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
  end

  create_table "teacher_comments", force: :cascade do |t|
    t.string "text"
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_response_id", null: false
    t.index ["teacher_id"], name: "index_teacher_comments_on_teacher_id"
    t.index ["user_response_id"], name: "index_teacher_comments_on_user_response_id"
  end

  create_table "user_responses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "activity_question_id", null: false
    t.string "text"
    t.string "picture"
    t.boolean "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_question_id"], name: "index_user_responses_on_activity_question_id"
    t.index ["user_id"], name: "index_user_responses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.boolean "teacher", default: false
    t.bigint "classroom_id", null: false
    t.index ["classroom_id"], name: "index_users_on_classroom_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activity_questions", "activities"
  add_foreign_key "badges", "activities"
  add_foreign_key "badges", "users"
  add_foreign_key "teacher_comments", "user_responses"
  add_foreign_key "teacher_comments", "users", column: "teacher_id"
  add_foreign_key "user_responses", "activity_questions"
  add_foreign_key "user_responses", "users"
  add_foreign_key "users", "classrooms"
end
