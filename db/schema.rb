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

ActiveRecord::Schema.define(version: 20141121092024) do

  create_table "dance_classes", force: true do |t|
    t.string   "name"
    t.integer  "level_id"
    t.string   "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors_lessons", id: false, force: true do |t|
    t.integer "lesson_id"
    t.integer "instructor_id"
  end

  create_table "lessons", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dance_class_id"
  end

  create_table "lessons_students", id: false, force: true do |t|
    t.integer "lesson_id"
    t.integer "student_id"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_name"
    t.string   "street"
    t.integer  "zip"
    t.string   "city"
    t.string   "phone"
  end

end
