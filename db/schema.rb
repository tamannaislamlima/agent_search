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

ActiveRecord::Schema.define(version: 20170209115102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.string   "mobile"
    t.string   "fax"
    t.string   "email"
    t.string   "license"
    t.string   "grading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "location"
    t.string   "agent_type"
  end

  create_table "inquiries", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "inquiry_type"
    t.string   "user_type"
    t.boolean  "proprietor_trade_license"
    t.boolean  "partner_registered_agreement"
    t.boolean  "limited_maa"
    t.boolean  "limited_certification_incorporation"
    t.boolean  "membership_of_chember"
    t.boolean  "vat_reg"
    t.boolean  "tin_number"
    t.boolean  "exim_license"
    t.boolean  "company_bank_account"
    t.boolean  "other_license"
    t.boolean  "commercial_invoice"
    t.boolean  "packing_list"
    t.boolean  "pro_forma_invoice"
    t.boolean  "shipping_documents"
    t.boolean  "proof_of_payment"
    t.boolean  "certificate_of_origin"
    t.boolean  "ex_erc_number"
    t.boolean  "insurance"
    t.boolean  "bond_license"
    t.boolean  "restricted_clearance"
    t.boolean  "import_reg_certificate"
    t.boolean  "export_reg_certificate"
    t.string   "location"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
