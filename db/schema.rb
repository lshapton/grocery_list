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

ActiveRecord::Schema.define(version: 20160930113903) do

  create_table "product_variants", force: :cascade do |t|
    t.integer  "external_id"
    t.integer  "product_external_id"
    t.string   "title"
    t.decimal  "price"
    t.string   "sku"
    t.integer  "position"
    t.string   "inventory_policy"
    t.string   "fulfillment_service"
    t.string   "inventory_management"
    t.string   "barcode"
    t.integer  "image_id"
    t.integer  "inventory_quantity"
    t.integer  "weight"
    t.string   "weight_unit"
    t.integer  "old_inventory_quantity"
    t.boolean  "requires_shipping"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "external_id"
    t.string   "title"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shopify_domain", null: false
    t.string   "shopify_token",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supply_variants", force: :cascade do |t|
    t.string   "title"
    t.integer  "weight"
    t.string   "weight_unit"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
