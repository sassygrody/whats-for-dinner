# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_15_031045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_plan_meals", force: :cascade do |t|
    t.bigint "meal_id"
    t.bigint "daily_plan_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["daily_plan_id"], name: "index_daily_plan_meals_on_daily_plan_id"
    t.index ["meal_id"], name: "index_daily_plan_meals_on_meal_id"
  end

  create_table "daily_plans", force: :cascade do |t|
    t.date "date"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_item_meals", force: :cascade do |t|
    t.bigint "food_item_id"
    t.bigint "meal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_item_id"], name: "index_food_item_meals_on_food_item_id"
    t.index ["meal_id"], name: "index_food_item_meals_on_meal_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "refrigerated", default: false
    t.boolean "in_kitchen", default: false
    t.integer "item_type", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.integer "name"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
