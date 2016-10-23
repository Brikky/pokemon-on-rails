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

ActiveRecord::Schema.define(version: 20161023042338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "element_types", force: :cascade do |t|
    t.string   "name"
    t.string   "strong_against",              array: true
    t.string   "weak_against",                array: true
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pokemon_groups", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "team_id"
    t.index ["pokemon_id"], name: "index_pokemon_groups_on_pokemon_id", using: :btree
    t.index ["team_id"], name: "index_pokemon_groups_on_team_id", using: :btree
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "element_type_id"
    t.index ["element_type_id"], name: "index_pokemon_types_on_element_type_id", using: :btree
    t.index ["pokemon_id"], name: "index_pokemon_types_on_pokemon_id", using: :btree
  end

  create_table "pokemons", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.string   "region"
    t.string   "image"
    t.string   "elements",                array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_teams_on_trainer_id", using: :btree
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "pokemon_groups", "pokemons"
  add_foreign_key "pokemon_groups", "teams"
  add_foreign_key "pokemon_types", "element_types"
  add_foreign_key "pokemon_types", "pokemons"
  add_foreign_key "teams", "trainers"
end
