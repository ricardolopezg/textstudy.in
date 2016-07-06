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

ActiveRecord::Schema.define(version: 20160706183545) do

  create_table "charges", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "plan"
    t.date     "expiration"
    t.string   "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "stripe_customer_id"
    t.integer  "amount"
  end

  add_index "charges", ["user_id"], name: "index_charges_on_user_id"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "mobile_phone"
    t.string   "alt_phone"
    t.string   "billing_phone"
    t.string   "billing_address1"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.string   "billing_country"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "fname"
    t.string   "lname"
    t.datetime "birthday"
    t.string   "billing_address2"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "stripe_customer_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "subject_id"
    t.text     "body"
    t.string   "version"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "language"
    t.text     "explanation"
    t.string   "correct_answer"
    t.boolean  "active",         default: false
  end

  create_table "responses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "from_number"
    t.string   "to_number"
    t.integer  "question_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "user_response"
    t.string   "question_version"
    t.string   "response_status"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "subsection"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "language"
    t.text     "long_description"
    t.text     "short_description"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "expiration"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "active",     default: false
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
