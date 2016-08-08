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

ActiveRecord::Schema.define(version: 20160806164744) do

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.string   "description"
    t.boolean  "activo"
    t.integer  "service_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["service_id"], name: "index_categories_on_service_id"
  end

  create_table "makes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "description"
    t.boolean  "activo"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_makes_on_category_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.string   "description"
    t.integer  "price"
    t.integer  "cant"
    t.boolean  "activo"
    t.integer  "make_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["make_id"], name: "index_products_on_make_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "nombre"
    t.string   "description"
    t.boolean  "activo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "token"
    t.integer  "number_requests"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "address"
    t.boolean  "active"
    t.string   "email"
    t.text     "bio"
    t.date     "birth_date"
    t.integer  "estrato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
