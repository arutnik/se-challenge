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

ActiveRecord::Schema.define(version: 20150804211908) do

  create_table "expense_sheets", force: :cascade do |t|
    t.datetime "date_uploaded"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.integer  "expense_sheet_id"
    t.date     "date"
    t.string   "category"
    t.string   "employee_name"
    t.string   "employee_address"
    t.text     "description"
    t.string   "tax_name"
    t.decimal  "pre_tax_amount",   precision: 8, scale: 2
    t.decimal  "tax_amount",       precision: 8, scale: 2
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

end
