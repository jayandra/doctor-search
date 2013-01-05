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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130105210244) do

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.integer  "hospital_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "departments", ["hospital_id"], :name => "index_departments_on_hospital_id"

  create_table "doctors", :force => true do |t|
    t.float    "checkup_time",        :default => 0.5
    t.string   "email"
    t.text     "message"
    t.string   "mobile1"
    t.string   "mobile2"
    t.string   "phone1"
    t.string   "phone2"
    t.integer  "primary_involvement"
    t.string   "name"
    t.integer  "department_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "doctors", ["department_id"], :name => "index_doctors_on_department_id"

  create_table "hospitals", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "involvements", :force => true do |t|
    t.boolean  "allow_appointment", :default => false
    t.float    "price",             :default => 0.0
    t.time     "from"
    t.time     "to"
    t.integer  "hospital_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.integer  "doctor_id"
  end

  add_index "involvements", ["doctor_id"], :name => "index_involvements_on_doctor_id"
  add_index "involvements", ["hospital_id"], :name => "index_involvements_on_hospital_id"

  create_table "searches", :force => true do |t|
    t.string   "doctor"
    t.string   "department"
    t.string   "hospital"
    t.string   "search_template"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end