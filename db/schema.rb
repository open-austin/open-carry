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

ActiveRecord::Schema.define(version: 20160405032458) do

  create_table "business_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "business_id"
  end

  add_index "business_types", ["business_id"], name: "index_business_types_on_business_id"

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "business_type_id"
    t.boolean  "conceal_ban"
    t.boolean  "open_ban"
    t.boolean  "alcohol51percent"
  end

  add_index "businesses", ["business_type_id"], name: "index_businesses_on_business_type_id"

end
