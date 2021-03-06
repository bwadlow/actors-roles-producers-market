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

ActiveRecord::Schema.define(version: 2018_08_23_164531) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "password_digest"
  end

  create_table "auditions", force: :cascade do |t|
    t.string "address"
    t.integer "actor_id"
    t.integer "production_company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_id"
    t.time "time"
    t.date "date"
    t.index ["actor_id"], name: "index_auditions_on_actor_id"
    t.index ["booking_id"], name: "index_auditions_on_booking_id"
    t.index ["production_company_id"], name: "index_auditions_on_production_company_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "salary"
    t.integer "duration_days"
    t.string "show_name"
    t.string "role_name"
    t.integer "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "production_company_id"
    t.string "sex"
    t.integer "age"
    t.boolean "available"
    t.index ["actor_id"], name: "index_bookings_on_actor_id"
    t.index ["production_company_id"], name: "index_bookings_on_production_company_id"
  end

  create_table "production_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "username"
    t.string "password_digest"
    t.string "address"
  end

end
