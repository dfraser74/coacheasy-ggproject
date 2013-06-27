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

ActiveRecord::Schema.define(:version => 20130627161058) do

  create_table "coaches", :force => true do |t|
    t.string   "email",                  :default => "",       :null => false
    t.string   "encrypted_password",     :default => "",       :null => false
    t.text     "firstname"
    t.text     "lastname"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "roles",                  :default => "--- []"
  end

  add_index "coaches", ["email"], :name => "index_coaches_on_email", :unique => true
  add_index "coaches", ["reset_password_token"], :name => "index_coaches_on_reset_password_token", :unique => true

  create_table "comment1s", :force => true do |t|
    t.integer  "program_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comment2s", :force => true do |t|
    t.integer  "program_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comment3s", :force => true do |t|
    t.integer  "program_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comment4s", :force => true do |t|
    t.integer  "program_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comment5s", :force => true do |t|
    t.integer  "program_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comment6s", :force => true do |t|
    t.integer  "program_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "program_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "title"
    t.date     "cweekstart"
    t.text     "cweekcomments"
    t.text     "cday1"
    t.text     "cday1zone"
    t.text     "cday2"
    t.text     "cday2zone"
    t.text     "cday3"
    t.text     "cday3zone"
    t.text     "cday4"
    t.text     "cday4zone"
    t.text     "cday5"
    t.text     "cday5zone"
    t.text     "cday6"
    t.text     "cday6zone"
    t.text     "cday7"
    t.text     "cday7zone"
    t.integer  "coach_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
