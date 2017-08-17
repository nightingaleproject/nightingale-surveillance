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

ActiveRecord::Schema.define(version: 20170816180146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "records", force: :cascade do |t|
    t.json "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveillance_requests", force: :cascade do |t|
    t.string "name"
    t.string "fields"
    t.string "terms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveillance_results", force: :cascade do |t|
    t.bigint "surveillance_request_id"
    t.bigint "record_id"
    t.string "field"
    t.string "term"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_surveillance_results_on_record_id"
    t.index ["surveillance_request_id"], name: "index_surveillance_results_on_surveillance_request_id"
  end

end
