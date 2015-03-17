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

ActiveRecord::Schema.define(version: 20150306195859) do

  create_table "collaborator_contacts", force: :cascade do |t|
    t.string   "street",          limit: 255
    t.integer  "street_number",   limit: 4
    t.string   "colony",          limit: 255
    t.string   "city",            limit: 255
    t.integer  "zip_code",        limit: 4
    t.integer  "phone_home",      limit: 4
    t.integer  "phone_mobile",    limit: 4
    t.string   "email",           limit: 255
    t.integer  "collaborator_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "collaborator_infos", force: :cascade do |t|
    t.string   "picture",             limit: 255
    t.string   "relationship_status", limit: 255
    t.decimal  "height",                          precision: 10
    t.string   "birthplace",          limit: 255
    t.string   "nationality",         limit: 255
    t.integer  "collaborator_id",     limit: 4
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "collaborator_works", force: :cascade do |t|
    t.string   "position",        limit: 255
    t.string   "team",            limit: 255
    t.decimal  "salary",                      precision: 10
    t.string   "account",         limit: 255
    t.string   "division",        limit: 255
    t.string   "department",      limit: 255
    t.string   "working_status",  limit: 255
    t.boolean  "status",          limit: 1
    t.integer  "collaborator_id", limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "collaborators", force: :cascade do |t|
    t.string   "names",      limit: 255
    t.string   "last_names", limit: 255
    t.string   "gender",     limit: 255
    t.date     "birthdate"
    t.string   "curp",       limit: 255
    t.string   "rfc",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
