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

ActiveRecord::Schema.define(version: 20170331181641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drills", force: :cascade do |t|
    t.integer  "sets"
    t.integer  "reps"
    t.integer  "day_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "exercise_id"
    t.index ["user_id"], name: "index_drills_on_user_id", using: :btree
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "user_id"
    t.boolean  "approved",   default: false
    t.integer  "group_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["group_id"], name: "index_exercises_on_group_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin",        default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "uid"
    t.string   "provider"
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.text     "oauth_raw_data"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", using: :btree
  end

  add_foreign_key "drills", "users"
  add_foreign_key "exercises", "groups"
end
