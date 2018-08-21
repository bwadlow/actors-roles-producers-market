ActiveRecord::Schema.define(version: 2018_08_21_194902) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.boolean "available?"
    t.integer "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "production_company_id"
    t.string "sex"
    t.index ["actor_id"], name: "index_bookings_on_actor_id"
    t.index ["production_company_id"], name: "index_bookings_on_production_company_id"
  end

  create_table "production_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
