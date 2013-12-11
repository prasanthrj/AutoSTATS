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

ActiveRecord::Schema.define(:version => 20131211094439) do

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.string   "project_description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "releases", :force => true do |t|
    t.integer  "release_ID"
    t.integer  "project_ID"
    t.date     "release_start_date"
    t.date     "release_end_date"
    t.string   "release_status"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "runs", :force => true do |t|
    t.integer  "release_ID"
    t.integer  "project_ID"
    t.string   "module_name"
    t.string   "test_case_name"
    t.string   "test_case_ID"
    t.string   "test_result"
    t.string   "browser"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
