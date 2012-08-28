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

ActiveRecord::Schema.define(:version => 20120827192432) do

  create_table "testimonials", :force => true do |t|
    t.text     "body"
    t.string   "author"
    t.integer  "training_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "training_translations", :force => true do |t|
    t.integer  "training_id"
    t.string   "locale"
    t.string   "title"
    t.text     "description"
    t.string   "infoletter"
    t.string   "participation_form"
    t.text     "additional_info"
    t.text     "summary"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "training_translations", ["locale"], :name => "index_training_translations_on_locale"
  add_index "training_translations", ["training_id"], :name => "index_training_translations_on_training_id"

  create_table "trainings", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "begins_on"
    t.date     "ends_on"
    t.string   "participating_countries"
    t.text     "additional_info"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "city"
    t.string   "country"
    t.integer  "maximum_age"
    t.integer  "minimum_age"
    t.text     "summary"
    t.string   "infoletter_file_name"
    t.string   "infoletter_content_type"
    t.integer  "infoletter_file_size"
    t.datetime "infoletter_updated_at"
    t.string   "participation_form_file_name"
    t.string   "participation_form_content_type"
    t.integer  "participation_form_file_size"
    t.datetime "participation_form_updated_at"
  end

end
