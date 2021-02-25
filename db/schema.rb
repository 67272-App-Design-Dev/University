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

ActiveRecord::Schema.define(version: 2021_02_23_174018) do

  create_table "assignments", force: :cascade do |t|
    t.integer "course_id"
    t.integer "faculty_id"
    t.index ["course_id"], name: "index_assignments_on_course_id"
    t.index ["faculty_id"], name: "index_assignments_on_faculty_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "unit_prefix"
    t.integer "number"
    t.integer "units"
    t.boolean "active"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "unit_prefix"
    t.boolean "active"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "department_id"
    t.string "rank"
    t.boolean "active"
    t.index ["department_id"], name: "index_faculties_on_department_id"
  end

end
