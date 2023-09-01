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

ActiveRecord::Schema[7.0].define(version: 2023_09_01_084607) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gate_passes", force: :cascade do |t|
    t.string "pass_number"
    t.date "date"
    t.integer "customer_id", null: false
    t.integer "loading_depot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_gate_passes_on_customer_id"
    t.index ["loading_depot_id"], name: "index_gate_passes_on_loading_depot_id"
  end

  create_table "invoice_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.decimal "price"
    t.integer "invoice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_invoice_items_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_number"
    t.date "date"
    t.decimal "subtotal"
    t.decimal "discount"
    t.decimal "tax"
    t.decimal "total"
    t.string "currency"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
  end

  create_table "load_authorities", force: :cascade do |t|
    t.string "authority_number"
    t.date "date"
    t.integer "customer_id", null: false
    t.integer "loading_depot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_load_authorities_on_customer_id"
    t.index ["loading_depot_id"], name: "index_load_authorities_on_loading_depot_id"
  end

  create_table "loading_depots", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_confirmations", force: :cascade do |t|
    t.string "order_number"
    t.date "date"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_order_confirmations_on_customer_id"
  end

  create_table "payment_receiveds", force: :cascade do |t|
    t.date "payment_date"
    t.decimal "amount"
    t.integer "invoice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_payment_receiveds_on_invoice_id"
  end

  create_table "proforma_invoices", force: :cascade do |t|
    t.string "invoice_number"
    t.date "date"
    t.decimal "subtotal"
    t.decimal "discount"
    t.decimal "tax"
    t.decimal "total"
    t.string "currency"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_proforma_invoices_on_customer_id"
  end

  add_foreign_key "gate_passes", "customers"
  add_foreign_key "gate_passes", "loading_depots"
  add_foreign_key "invoice_items", "invoices"
  add_foreign_key "invoices", "customers"
  add_foreign_key "load_authorities", "customers"
  add_foreign_key "load_authorities", "loading_depots"
  add_foreign_key "order_confirmations", "customers"
  add_foreign_key "payment_receiveds", "invoices"
  add_foreign_key "proforma_invoices", "customers"
end
