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

ActiveRecord::Schema.define(version: 20160409161947) do

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "mobile_phone"
    t.string   "alt_phone"
    t.string   "billing_phone"
    t.string   "billing_address"
    t.string   "string"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.string   "billing_country"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "subject_id"
    t.text     "question"
    t.string   "correct_answer"
    t.string   "version"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "wrong_answer1"
    t.string   "wrong_answer2"
    t.string   "wrong_answer3"
    t.string   "language"
    t.text     "explanation"
  end

  create_table "responses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "from_number"
    t.string   "to_number"
    t.integer  "questions_id"
    t.string   "response"
    t.string   "timestamp"
    t.integer  "version"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "subsection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "language"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
