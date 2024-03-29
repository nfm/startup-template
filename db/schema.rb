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

ActiveRecord::Schema.define(version: 20150316070826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "identity"
    t.hstore   "properties"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["identity", "name"], name: "index_events_on_identity_and_name", using: :btree
  add_index "events", ["name"], name: "index_events_on_name", using: :btree
  add_index "events", ["properties"], name: "index_events_on_properties", using: :gin

  create_table "metrics", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "metrics", ["name", "date"], name: "index_metrics_on_name_and_date", using: :btree
  add_index "metrics", ["name"], name: "index_metrics_on_name", using: :btree

end
