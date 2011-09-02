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

ActiveRecord::Schema.define(:version => 20110116194024) do

  create_table "admins", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.date     "DOB"
    t.text     "address"
    t.string   "phone"
    t.string   "email"
    t.string   "school"
    t.date     "date_started"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sports"
  end

  create_table "logs", :force => true do |t|
    t.date     "log_date"
    t.float    "height"
    t.float    "weight"
    t.integer  "age"
    t.integer  "RHR"
    t.float    "LBM"
    t.float    "body_fat"
    t.integer  "BMR"
    t.float    "BMI"
    t.integer  "TDEE"
    t.text     "goals"
    t.text     "reminders"
    t.text     "notes"
    t.float    "m_neck"
    t.float    "m_shoulders"
    t.float    "m_chest"
    t.float    "m_waist"
    t.float    "m_hips"
    t.float    "m_biceps_flex_r"
    t.float    "m_biceps_flex_l"
    t.float    "m_biceps_relax_r"
    t.float    "m_biceps_relax_l"
    t.float    "m_forearm_r"
    t.float    "m_forearm_l"
    t.float    "m_wrist_r"
    t.float    "m_wrist_l"
    t.float    "m_thigh_r"
    t.float    "m_thigh_l"
    t.float    "m_calf_r"
    t.float    "m_calf_l"
    t.float    "s_pec1"
    t.float    "s_pec2"
    t.float    "s_pec3"
    t.float    "s_ab1"
    t.float    "s_ab2"
    t.float    "s_ab3"
    t.float    "s_thigh1"
    t.float    "s_thigh2"
    t.float    "s_thigh3"
    t.float    "s_tricep1"
    t.float    "s_tricep2"
    t.float    "s_tricep3"
    t.float    "s_sub1"
    t.float    "s_sub2"
    t.float    "s_sub3"
    t.float    "s_sup1"
    t.float    "s_sup2"
    t.float    "s_sup3"
    t.float    "s_ax1"
    t.float    "s_ax2"
    t.float    "s_ax3"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
