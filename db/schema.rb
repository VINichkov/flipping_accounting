# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_31_024956) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id", null: false
    t.bigint "project_type_id", null: false
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_projects_on_city_id"
    t.index ["project_type_id"], name: "index_projects_on_project_type_id"
    t.index ["state_id"], name: "index_projects_on_state_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "target_params", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.float "start_price"
    t.boolean "is_credit"
    t.float "initial_fee"
    t.float "mortgage_interest"
    t.integer "project_duration"
    t.float "additional_expenses"
    t.float "monthly_payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_target_params_on_project_id"
  end

  add_foreign_key "projects", "cities"
  add_foreign_key "projects", "project_types"
  add_foreign_key "projects", "states"
  add_foreign_key "target_params", "projects"
end
