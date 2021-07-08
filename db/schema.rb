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

ActiveRecord::Schema.define(version: 2021_07_08_225901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "note_associations", force: :cascade do |t|
    t.integer "note_1_id", null: false
    t.integer "note_2_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["note_1_id", "note_2_id"], name: "index_note_associations_on_note_1_id_and_note_2_id", unique: true
    t.index ["note_2_id"], name: "index_note_associations_on_note_2_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "body", null: false
    t.string "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email"
    t.string "password_digest", null: false
    t.string "session_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
