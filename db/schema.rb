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

ActiveRecord::Schema[7.0].define(version: 2023_07_05_142821) do
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.float "start_price", default: 0.0, comment: "Cтартовая цена"
    t.boolean "is_credit", default: false, comment: "Кредитные средства или собственные. По умолчанию собственные"
    t.float "initial_fee", default: 0.0, comment: "Первоначальный платеж. Только для кредитных"
    t.float "mortgage_interest", default: 0.0, comment: "Процент по ипотеке. Только для кредитных"
    t.float "project_duration", default: 120.0, comment: "Планируемая продолжительность проекта. По умолчанию 120 дней"
    t.float "additional_expenses", default: 0.0, comment: "Общая сумма дополнительных платежей"
    t.float "monthly_payment", default: 0.0, comment: "Ежемесячный платеж"
    t.index ["city_id"], name: "index_projects_on_city_id"
    t.index ["project_type_id"], name: "index_projects_on_project_type_id"
  end

  add_foreign_key "projects", "cities"
  add_foreign_key "projects", "project_types"
end
