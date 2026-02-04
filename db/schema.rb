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

ActiveRecord::Schema[8.1].define(version: 2023_02_13_031834) do
  create_table "assignments", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "faculty_id", null: false
    t.index ["course_id"], name: "index_assignments_on_course_id"
    t.index ["faculty_id"], name: "index_assignments_on_faculty_id"
  end

  create_table "courses", force: :cascade do |t|
    t.boolean "active"
    t.string "name"
    t.integer "number"
    t.string "unit_prefix"
    t.integer "units"
  end

  create_table "departments", force: :cascade do |t|
    t.boolean "active"
    t.string "name"
    t.string "unit_prefix"
  end

  create_table "faculties", force: :cascade do |t|
    t.boolean "active"
    t.integer "department_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "rank"
    t.index ["department_id"], name: "index_faculties_on_department_id"
  end

  add_foreign_key "assignments", "courses"
  add_foreign_key "assignments", "faculties"
  add_foreign_key "faculties", "departments"
end
