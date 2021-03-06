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

ActiveRecord::Schema.define(version: 2018012302164499) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaign_results", force: :cascade do |t|
    t.bigint "campaign_id"
    t.integer "campaign_reply_rate"
    t.integer "campaign_click_through_rate"
    t.integer "campaign_open_rate"
    t.integer "total_replies"
    t.integer "total_positive_replies"
    t.integer "total_opens"
    t.integer "total_clicks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_results_on_campaign_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.bigint "client_id"
    t.string "campaign_reference"
    t.string "campaign_status"
    t.string "campaign_type"
    t.string "campaign_plan"
    t.integer "estimated_campaign_length"
    t.integer "initial_total_prospects"
    t.date "total_prospects_to_date"
    t.date "commercial_agreement_signed_date"
    t.date "estimated_start_date"
    t.date "estimated_end_date"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_campaigns_on_client_id"
  end

  create_table "client_companies", force: :cascade do |t|
    t.string "company_name"
    t.string "street_address"
    t.string "state"
    t.string "postal_code"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.bigint "client_company_id"
    t.string "title"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
    t.integer "mobile_number"
    t.string "branch_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contact_level"
    t.index ["client_company_id"], name: "index_clients_on_client_company_id"
  end

  create_table "prospect_characteristics", force: :cascade do |t|
    t.string "job_title"
    t.string "seniority_level"
    t.string "function"
    t.string "industry"
    t.string "company_name"
    t.string "company_headcount"
    t.string "past_company"
    t.string "company_type"
    t.string "school"
    t.string "language"
    t.string "years_in_current_position"
    t.string "years_at_current_company"
    t.string "years_of_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prospect_companies", force: :cascade do |t|
    t.string "company_name"
    t.string "street_address"
    t.string "state"
    t.string "postal_code"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prospects", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "campaign_id"
    t.string "prospect_type"
    t.string "prospect_status"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
    t.integer "mobile_number"
    t.string "branch_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "prospect_company_id"
    t.bigint "prospect_characteristic_id"
    t.index ["campaign_id"], name: "index_prospects_on_campaign_id"
    t.index ["client_id"], name: "index_prospects_on_client_id"
    t.index ["prospect_characteristic_id"], name: "index_prospects_on_prospect_characteristic_id"
    t.index ["prospect_company_id"], name: "index_prospects_on_prospect_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campaign_results", "campaigns"
  add_foreign_key "campaigns", "clients"
  add_foreign_key "clients", "client_companies"
  add_foreign_key "prospects", "campaigns"
  add_foreign_key "prospects", "clients"
  add_foreign_key "prospects", "prospect_characteristics"
  add_foreign_key "prospects", "prospect_companies"
end
