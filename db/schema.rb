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

ActiveRecord::Schema.define(version: 20141205135629) do

  create_table "dance_classes", force: true do |t|
    t.string   "name"
    t.integer  "duration"
    t.decimal  "price"
    t.integer  "max_students"
    t.text     "description"
    t.integer  "room_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dance_classes", ["group_id"], name: "index_dance_classes_on_group_id"
  add_index "dance_classes", ["room_id"], name: "index_dance_classes_on_room_id"

  create_table "dance_classes_students", id: false, force: true do |t|
    t.integer "dance_class_id"
    t.integer "student_id"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors_lessons", id: false, force: true do |t|
    t.integer "lesson_id"
    t.integer "instructor_id"
  end

  create_table "lessons", force: true do |t|
    t.integer  "dance_class_id"
    t.datetime "scheduled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["dance_class_id"], name: "index_lessons_on_dance_class_id"

  create_table "lessons_students", id: false, force: true do |t|
    t.integer "lesson_id"
    t.integer "student_id"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name"], name: "index_roles_on_name", unique: true

  create_table "roles_users", id: false, force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "zip"
    t.string   "city"
    t.string   "phone"
    t.string   "country"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
