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

ActiveRecord::Schema.define(version: 20150417135932) do

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_titles", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "s_histories", force: :cascade do |t|
    t.integer  "staff_id"
    t.date     "hdate"
    t.integer  "type_ent_id"
    t.integer  "ndays"
    t.string   "observation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "s_histories", ["staff_id"], name: "index_s_histories_on_staff_id"
  add_index "s_histories", ["type_ent_id"], name: "index_s_histories_on_type_ent_id"

  create_table "staffs", force: :cascade do |t|
    t.string   "staff_number"
    t.string   "name"
    t.string   "surname"
    t.integer  "job_title_id"
    t.integer  "department_id"
    t.date     "startdate"
    t.date     "finishdate"
    t.boolean  "active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "staffs", ["department_id"], name: "index_staffs_on_department_id"
  add_index "staffs", ["job_title_id"], name: "index_staffs_on_job_title_id"

  create_table "type_ents", force: :cascade do |t|
    t.string   "initial"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
