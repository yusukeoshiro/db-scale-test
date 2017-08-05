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

ActiveRecord::Schema.define(version: 20170805171112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tests", force: :cascade do |t|
    t.string   "a"
    t.string   "b"
    t.string   "c"
    t.string   "d"
    t.string   "e"
    t.string   "f"
    t.string   "g"
    t.string   "h"
    t.string   "i"
    t.string   "j"
    t.string   "k"
    t.string   "l"
    t.string   "m"
    t.string   "n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tests", ["a"], name: "index_tests_on_a", using: :btree
  add_index "tests", ["b"], name: "index_tests_on_b", using: :btree
  add_index "tests", ["c"], name: "index_tests_on_c", using: :btree
  add_index "tests", ["d"], name: "index_tests_on_d", using: :btree
  add_index "tests", ["e"], name: "index_tests_on_e", using: :btree
  add_index "tests", ["f"], name: "index_tests_on_f", using: :btree
  add_index "tests", ["g"], name: "index_tests_on_g", using: :btree
  add_index "tests", ["h"], name: "index_tests_on_h", using: :btree
  add_index "tests", ["i"], name: "index_tests_on_i", using: :btree
  add_index "tests", ["j"], name: "index_tests_on_j", using: :btree
  add_index "tests", ["k"], name: "index_tests_on_k", using: :btree
  add_index "tests", ["l"], name: "index_tests_on_l", using: :btree
  add_index "tests", ["m"], name: "index_tests_on_m", using: :btree
  add_index "tests", ["n"], name: "index_tests_on_n", using: :btree

end
