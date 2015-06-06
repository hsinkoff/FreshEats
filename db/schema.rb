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

ActiveRecord::Schema.define(version: 20150606213408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: true do |t|
    t.string   "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "fruits",     default: [], array: true
    t.text     "veggies",    default: [], array: true
  end

  create_table "freshstores", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zipcode"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zipcode"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "apples",           default: false
    t.boolean  "oranges",          default: false
    t.boolean  "bananas",          default: false
    t.boolean  "grapes",           default: false
    t.boolean  "other_fruits",     default: false
    t.boolean  "lettuce",          default: false
    t.boolean  "carrots",          default: false
    t.boolean  "onions",           default: false
    t.boolean  "potatoes",         default: false
    t.boolean  "other_vegetables", default: false
  end

end
