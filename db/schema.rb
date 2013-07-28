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

ActiveRecord::Schema.define(version: 20130728122952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: true do |t|
    t.string   "content_en"
    t.string   "content_hr"
    t.date     "expires_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attachments", force: true do |t|
    t.string   "name_en"
    t.string   "name_hr"
    t.string   "file_en"
    t.string   "file_hr"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name_hr"
    t.string   "name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string "name_en"
    t.string "name_hr"
    t.string "photo"
    t.string "url_en"
    t.string "url_hr"
  end

  create_table "posts", force: true do |t|
    t.string   "title_en"
    t.string   "title_hr"
    t.text     "body_en"
    t.text     "body_hr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name_en"
    t.string   "name_hr"
    t.text     "description_hr"
    t.text     "description_en"
    t.integer  "category_id"
    t.string   "location_en"
    t.string   "location_hr"
    t.date     "begins_on"
    t.date     "ends_on"
    t.date     "deadline"
    t.string   "age_restriction_en"
    t.string   "age_restriction_hr"
    t.string   "capacity_en"
    t.string   "capacity_hr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testimonials", force: true do |t|
    t.text     "content_hr"
    t.text     "content_en"
    t.string   "author"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
