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

ActiveRecord::Schema.define(version: 20141122141342) do

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

end
