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

ActiveRecord::Schema.define(version: 20141018042618) do

  create_table "accomodations", force: true do |t|
    t.string   "roomtype"
    t.string   "location"
    t.integer  "price"
    t.integer  "bond"
    t.datetime "available"
    t.text     "description"
    t.boolean  "smoking"
    t.string   "contact_phone"
    t.string   "contact_name"
    t.datetime "closed_at"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Imagelink1"
    t.string   "Imagelink2"
    t.string   "Imagelink3"
  end

  create_table "classifications", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.string   "name"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "employer"
    t.string   "role"
    t.text     "description"
    t.text     "criteria"
    t.integer  "salary"
    t.string   "salary_type"
    t.date     "closed_date"
    t.string   "category"
    t.integer  "duration"
    t.text     "contact"
    t.string   "location"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "contact_phone"
    t.text     "contact_email"
    t.text     "apply"
    t.string   "slug"
    t.integer  "classification_id"
  end

  add_index "jobs", ["slug"], name: "index_jobs_on_slug"
  add_index "jobs", ["user_id", "created_at"], name: "index_jobs_on_user_id_and_created_at"

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "user_job_criteria", force: true do |t|
    t.integer  "user_id"
    t.string   "classification"
    t.string   "categories"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.date     "dob"
    t.string   "suburb"
    t.text     "address"
    t.string   "phone"
    t.string   "education"
    t.text     "details"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
