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

ActiveRecord::Schema.define(version: 20140317220706) do

  create_table "panel_datas", force: true do |t|
    t.string   "name"
    t.integer  "panel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "panel_datas", ["panel_id"], name: "index_panel_datas_on_panel_id"

  create_table "panels", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.text     "content"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order"
    t.text     "css"
    t.text     "js"
  end

  create_table "panels_styles", id: false, force: true do |t|
    t.integer "panel_id", null: false
    t.integer "style_id", null: false
  end

  create_table "styles", force: true do |t|
    t.string   "name"
    t.text     "css"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "texts", force: true do |t|
    t.text     "content"
    t.integer  "panel_data_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "texts", ["panel_data_id"], name: "index_texts_on_panel_data_id"

end
