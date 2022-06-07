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

ActiveRecord::Schema[7.0].define(version: 2022_06_04_174254) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_similarity"
  enable_extension "plpgsql"

  create_table "logs_mercs", force: :cascade do |t|
    t.integer "user_id"
    t.string "m_name"
    t.string "t_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "legal_representative_name"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terrorist_matches", force: :cascade do |t|
    t.integer "user_id"
    t.string "m_name"
    t.string "match"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terrorists", id: false, force: :cascade do |t|
    t.string "name"
    t.integer "id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
