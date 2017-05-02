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

ActiveRecord::Schema.define(version: 20170326135617) do

  create_table "cabs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "reg_no"
    t.integer  "seats"
    t.boolean  "aircond"
    t.float    "monthly_rental", limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "drivers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "did",        limit: 65535
    t.string   "name"
    t.float    "salary",     limit: 24
    t.integer  "c_id"
    t.text     "address",    limit: 65535
    t.integer  "phone"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "cab_id"
    t.string   "source"
    t.string   "destination"
    t.string   "via"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",        limit: 25
    t.text     "roll",        limit: 65535
    t.text     "address",     limit: 65535
    t.text     "phone",       limit: 65535
    t.string   "pick_uo_loc"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
