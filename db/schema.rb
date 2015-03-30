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

ActiveRecord::Schema.define(version: 20150327195131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collaborator_banks", force: :cascade do |t|
    t.string   "beneficiary_name"
    t.string   "relationship"
    t.string   "rfc"
    t.string   "birthdate"
    t.string   "adress"
    t.integer  "collaborator_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "collaborator_benefits", force: :cascade do |t|
    t.boolean  "gym"
    t.string   "gym_name"
    t.string   "company_saving"
    t.integer  "company_saving_amount"
    t.string   "welfare"
    t.string   "rent_deposit"
    t.integer  "rent_deposit_amount"
    t.string   "rent_deposit_per_month"
    t.string   "gasoline_help"
    t.string   "carwash_service"
    t.string   "housemoving_service"
    t.integer  "collaborator_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "collaborator_contacts", force: :cascade do |t|
    t.string   "street"
    t.integer  "street_number"
    t.string   "colony"
    t.string   "city"
    t.integer  "zip_code"
    t.integer  "phone_home"
    t.integer  "phone_mobile"
    t.string   "email"
    t.integer  "collaborator_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "collaborator_infos", force: :cascade do |t|
    t.string   "picture"
    t.string   "relationship_status"
    t.decimal  "height"
    t.string   "birthplace"
    t.string   "nationality"
    t.integer  "collaborator_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "collaborator_knowledges", force: :cascade do |t|
    t.string   "lenguajes"
    t.string   "technologies"
    t.integer  "collaborator_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "collaborator_pastworks", force: :cascade do |t|
    t.string   "company"
    t.string   "period"
    t.string   "position"
    t.string   "team"
    t.integer  "salary"
    t.string   "boss"
    t.integer  "phone"
    t.string   "reason_to_leave"
    t.integer  "collaborator_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "collaborator_preferences", force: :cascade do |t|
    t.string   "likes"
    t.string   "dislikes"
    t.string   "shirt_size"
    t.string   "pants_size"
    t.string   "religion"
    t.integer  "collaborator_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "collaborator_projects", force: :cascade do |t|
    t.string   "project_name"
    t.string   "technologies"
    t.string   "id_responsible"
    t.date     "start_date"
    t.date     "finish_date"
    t.string   "position"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "collaborator_schoolinfos", force: :cascade do |t|
    t.string   "education_level"
    t.string   "career"
    t.string   "technologies"
    t.string   "languages"
    t.string   "school_origin"
    t.string   "school_schedule"
    t.string   "semester"
    t.integer  "collaborator_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "collaborator_works", force: :cascade do |t|
    t.string   "position"
    t.string   "team"
    t.decimal  "salary"
    t.string   "account"
    t.string   "division"
    t.string   "department"
    t.string   "working_status"
    t.boolean  "status"
    t.integer  "collaborator_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "collaborators", force: :cascade do |t|
    t.string   "names"
    t.string   "last_names"
    t.string   "gender"
    t.date     "birthdate"
    t.string   "curp"
    t.string   "rfc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collaborators_collaborator_projects", id: false, force: :cascade do |t|
    t.integer "collaborator_id"
    t.integer "collaborator_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
