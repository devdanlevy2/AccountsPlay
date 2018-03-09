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

ActiveRecord::Schema.define(version: 20180309023313) do

  create_table "black_accounts", force: :cascade do |t|
    t.integer "Accountid"
    t.string "name"
    t.integer "accountBalance"
    t.integer "accountLimit"
    t.integer "apr"
    t.integer "userId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blue_accounts", force: :cascade do |t|
    t.integer "Accountid"
    t.string "name"
    t.integer "accountBalance"
    t.string "Address"
    t.date "paymentDate"
    t.integer "userID"
    t.string "contactInformation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "red_accounts", force: :cascade do |t|
    t.integer "accountId"
    t.string "name"
    t.integer "accountBalance"
    t.integer "accountLimit"
    t.date "paymentDate"
    t.string "userID"
    t.string "integer"
    t.integer "apr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "userid"
  end

end
