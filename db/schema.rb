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

ActiveRecord::Schema.define(version: 20190414125534) do

  create_table "study_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "code_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "study_items_subitems", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "study_item_id", null: false
    t.bigint "study_subitem_id", null: false
    t.index ["study_item_id", "study_subitem_id"], name: "index_study_items_subitems_on_study_item_id_and_study_subitem_id"
    t.index ["study_subitem_id", "study_item_id"], name: "index_study_items_subitems_on_study_subitem_id_and_study_item_id"
  end

  create_table "study_subitems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "code_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
