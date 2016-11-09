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

ActiveRecord::Schema.define(version: 20161109003832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name",                                                               null: false
    t.string   "size",                                                               null: false
    t.string   "ceo",                                                                null: false
    t.string   "logo_url",                                                           null: false
    t.string   "cover_url",                                                          null: false
    t.string   "location",                                                           null: false
    t.string   "company_url"
    t.string   "description", default: "This Company has yet to add a description."
    t.datetime "created_at",                                                         null: false
    t.datetime "updated_at",                                                         null: false
    t.index ["location"], name: "index_companies_on_location", using: :btree
    t.index ["name"], name: "index_companies_on_name", using: :btree
  end

  create_table "posting_applications", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "posting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "resume",     null: false
    t.index ["posting_id"], name: "index_posting_applications_on_posting_id", using: :btree
    t.index ["user_id", "posting_id"], name: "index_posting_applications_on_user_id_and_posting_id", using: :btree
  end

  create_table "posting_saves", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "posting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["posting_id"], name: "index_posting_saves_on_posting_id", using: :btree
    t.index ["user_id", "posting_id"], name: "index_posting_saves_on_user_id_and_posting_id", using: :btree
  end

  create_table "postings", force: :cascade do |t|
    t.integer  "company_id",   null: false
    t.string   "external_url"
    t.string   "title",        null: false
    t.string   "position",     null: false
    t.string   "description",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["company_id"], name: "index_postings_on_company_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",          null: false
    t.integer  "company_id",       null: false
    t.integer  "rating",           null: false
    t.boolean  "current_employee", null: false
    t.string   "job_title",        null: false
    t.string   "title",            null: false
    t.string   "pros",             null: false
    t.string   "cons",             null: false
    t.string   "advice",           null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                        null: false
    t.string   "password_digest",                 null: false
    t.string   "email",                           null: false
    t.string   "session_token",                   null: false
    t.boolean  "is_employer",     default: false, null: false
    t.integer  "company_id",      default: -1
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["session_token"], name: "index_users_on_session_token", using: :btree
    t.index ["username"], name: "index_users_on_username", using: :btree
  end

end
