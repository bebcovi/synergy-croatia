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

ActiveRecord::Schema.define(version: 20140317160525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "unaccent"
  enable_extension "pg_trgm"

  create_table "albums", force: true do |t|
    t.string   "name_en"
    t.string   "name_hr"
    t.text     "description_en"
    t.text     "description_hr"
    t.integer  "position"
    t.integer  "cover_photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "page_photos", force: true do |t|
    t.string   "image"
    t.string   "action"
    t.string   "controller"
    t.float    "crop_x"
    t.float    "crop_y"
    t.float    "crop_w"
    t.float    "crop_h"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string  "name_en"
    t.string  "name_hr"
    t.string  "photo"
    t.string  "url_en"
    t.string  "url_hr"
    t.integer "position"
  end

  create_table "photos", force: true do |t|
    t.string   "image"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title_en"
    t.string   "title_hr"
    t.text     "body_en"
    t.text     "body_hr"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_photo"
    t.text     "summary_en"
    t.text     "summary_hr"
    t.boolean  "cover_photo_processing"
    t.string   "cover_photo_tmp"
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
    t.text     "summary_hr"
    t.text     "summary_en"
    t.string   "cover_photo"
    t.boolean  "cover_photo_processing"
    t.string   "cover_photo_tmp"
  end

  create_table "testimonials", force: true do |t|
    t.text     "content_hr"
    t.text     "content_en"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "project_en"
    t.string   "project_hr"
  end

  create_table "texts", force: true do |t|
    t.text     "body_en"
    t.text     "body_hr"
    t.string   "controller"
    t.string   "action"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "toc",        default: false
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "encrypted_password"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
