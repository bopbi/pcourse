# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091018065753) do

  create_table "class_sessions", :force => true do |t|
    t.string   "class_session_name"
    t.string   "day"
    t.string   "start"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_type_id"
  end

  create_table "course_types", :force => true do |t|
    t.string   "course_type_name"
    t.float    "course_type_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "financial_reports", :force => true do |t|
    t.date     "financial_report_date"
    t.integer  "transaction_type_id"
    t.float    "value"
    t.boolean  "debit"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", :force => true do |t|
    t.string   "school_no"
    t.string   "school_name"
    t.text     "school_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_attendances", :force => true do |t|
    t.integer  "student_id"
    t.integer  "class_session_id"
    t.boolean  "attendance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "student_attendance_date"
  end

  create_table "students", :force => true do |t|
    t.string   "student_no"
    t.date     "register_date"
    t.string   "name"
    t.string   "place_birth"
    t.date     "date_birth"
    t.text     "address"
    t.string   "phone_number"
    t.string   "handphone_number"
    t.integer  "school_id"
    t.string   "grade"
    t.string   "father_name"
    t.string   "mother_name"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "transaction_types", :force => true do |t|
    t.string   "transaction_type_code"
    t.string   "transaction_type_name"
    t.boolean  "debit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutor_attendances", :force => true do |t|
    t.integer  "tutor_id"
    t.integer  "class_session_id"
    t.date     "attendance_day"
    t.boolean  "attendance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutors", :force => true do |t|
    t.string   "tutor_no"
    t.string   "tutor_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "tutor_address"
    t.string   "tutor_phone"
    t.string   "tutor_handphone"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
