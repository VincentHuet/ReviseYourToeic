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

ActiveRecord::Schema.define(:version => 20120827103063) do

  create_table "locales", :force => true do |t|
    t.string   "name"
    t.boolean  "primary_locale"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "originals", :force => true do |t|
    t.string   "path"
    t.string   "base"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tolk_engine_locales", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.boolean  "primary_locale"
  end

  create_table "tolk_engine_phrases", :force => true do |t|
    t.string   "key"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "yaml_path"
  end

  create_table "tolk_engine_translations", :force => true do |t|
    t.string   "text"
    t.integer  "translator_id"
    t.integer  "phrase_id"
    t.integer  "locale_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "needed_update"
  end

  create_table "tolk_engine_translators", :force => true do |t|
    t.string   "name"
    t.integer  "locale_id"
    t.string   "password"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
    t.boolean  "admin"
  end

  add_index "tolk_engine_translators", ["email"], :name => "index_tolk_engine_translators_on_email", :unique => true
  add_index "tolk_engine_translators", ["reset_password_token"], :name => "index_tolk_engine_translators_on_reset_password_token", :unique => true

  create_table "tolk_engine_yml_sources", :force => true do |t|
    t.string   "name"
    t.string   "path"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tolk_engine_yml_sources", ["path"], :name => "index_tolk_engine_yml_sources_on_path", :unique => true

  create_table "words", :force => true do |t|
    t.string   "english"
    t.string   "french"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "path"
    t.integer  "original_id"
  end

end
