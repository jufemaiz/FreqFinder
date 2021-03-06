# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 2018_12_20_022157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transmitters", force: :cascade do |t|
    t.string "band"
    t.bigint "station_id"
    t.string "area"
    t.string "callsign"
    t.float "frequency"
    t.string "purpose"
    t.string "polarisation"
    t.integer "antenna_height"
    t.string "antenna_pattern"
    t.integer "maximum_erp"
    t.integer "maximum_cmf"
    t.integer "power"
    t.integer "technical_specification_number"
    t.integer "license_number"
    t.integer "site_id"
    t.text "site_name"
    t.integer "zone"
    t.integer "easting"
    t.integer "northing"
    t.decimal "lat", precision: 16, scale: 13
    t.decimal "lng", precision: 16, scale: 13
    t.string "state"
    t.integer "bsl"
    t.string "license_area"
    t.integer "license_id"
    t.string "operation_hours"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["station_id"], name: "index_transmitters_on_station_id"
  end

end
