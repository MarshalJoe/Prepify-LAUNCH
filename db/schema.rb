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

ActiveRecord::Schema.define(version: 20140222182955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.string   "value"
    t.boolean  "correct"
    t.text     "explaination"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "question_id"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "lessons", force: true do |t|
    t.string   "name"
    t.text     "intro"
    t.text     "conclusion"
    t.string   "video_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "equation"
    t.integer  "level"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lesson_id"
  end

  add_index "questions", ["lesson_id"], name: "index_questions_on_lesson_id", using: :btree

  create_table "results", force: true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "answer_id"
    t.boolean  "correct"
    t.time     "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "results", ["answer_id"], name: "index_results_on_answer_id", using: :btree
  add_index "results", ["question_id"], name: "index_results_on_question_id", using: :btree
  add_index "results", ["user_id"], name: "index_results_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
