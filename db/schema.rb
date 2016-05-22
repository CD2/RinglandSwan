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

ActiveRecord::Schema.define(version: 20160522002745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banner_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string   "name"
    t.string   "telephone"
    t.string   "email"
    t.integer  "number_of_people"
    t.datetime "date"
    t.string   "time"
    t.text     "message"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "enquiries", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "banner"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gallery_images", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.text     "summary"
    t.string   "page_title"
    t.string   "banner_caption"
    t.text     "meta_description"
    t.boolean  "meta_page"
    t.string   "machine_name"
    t.string   "slug"
    t.string   "menu_name"
    t.boolean  "include_in_menu"
    t.integer  "order"
    t.boolean  "featured"
    t.integer  "sidebar"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["slug"], name: "index_pages_on_slug", unique: true, using: :btree
  end

end
