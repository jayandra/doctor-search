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

ActiveRecord::Schema.define(:version => 20130125003823) do

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

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
    t.integer  "user_id"
  end

  add_index "doctors", ["department_id"], :name => "index_doctors_on_department_id"
  add_index "doctors", ["user_id"], :name => "index_doctors_on_user_id"

  create_table "hospitals", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "hospitals", ["user_id"], :name => "index_hospitals_on_user_id"

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

  create_table "services", :force => true do |t|
    t.integer  "hospital_id"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "services", ["department_id"], :name => "index_services_on_department_id"
  add_index "services", ["hospital_id"], :name => "index_services_on_hospital_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "role"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
