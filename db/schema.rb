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

ActiveRecord::Schema.define(version: 20160813220454) do

  create_table "answer_x_clasifications", force: :cascade do |t|
    t.integer  "answers_id"
    t.integer  "clasifications_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["answers_id"], name: "index_answer_x_clasifications_on_answers_id"
    t.index ["clasifications_id"], name: "index_answer_x_clasifications_on_clasifications_id"
  end

  create_table "answer_x_types", force: :cascade do |t|
    t.integer  "answers_id"
    t.integer  "types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answers_id"], name: "index_answer_x_types_on_answers_id"
    t.index ["types_id"], name: "index_answer_x_types_on_types_id"
  end

  create_table "answers", force: :cascade do |t|
    t.string   "Body"
    t.string   "SRC"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "anwers", force: :cascade do |t|
    t.string   "Body"
    t.string   "SRC"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "attachments", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["product_id"], name: "index_attachments_on_product_id"
  end

  create_table "clasifications", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "in_shopping_carts", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "shopping_cart_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["product_id"], name: "index_in_shopping_carts_on_product_id"
    t.index ["shopping_cart_id"], name: "index_in_shopping_carts_on_shopping_cart_id"
  end

  create_table "link_attachments", force: :cascade do |t|
    t.integer  "link_id"
    t.datetime "expiration_date"
    t.integer  "attachment_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["attachment_id"], name: "index_link_attachments_on_attachment_id"
    t.index ["link_id"], name: "index_link_attachments_on_link_id"
  end

  create_table "links", force: :cascade do |t|
    t.integer  "product_id"
    t.datetime "expiration_date"
    t.integer  "downloads"
    t.integer  "downloads_limit"
    t.string   "custom_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.index ["product_id"], name: "index_links_on_product_id"
  end

  create_table "my_emails", force: :cascade do |t|
    t.string   "email"
    t.string   "ip"
    t.integer  "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_payments", force: :cascade do |t|
    t.string   "email"
    t.string   "ip"
    t.string   "status"
    t.decimal  "fee",              precision: 6, scale: 2
    t.string   "paypal_id"
    t.decimal  "total",            precision: 8, scale: 2
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "shopping_cart_id"
    t.index ["shopping_cart_id"], name: "index_my_payments_on_shopping_cart_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "sites_id"
    t.text     "SRC"
    t.string   "Section"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sites_id"], name: "index_photos_on_sites_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "pricing"
    t.text     "description"
    t.integer  "user_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "question_x_answers", force: :cascade do |t|
    t.integer  "questions_id"
    t.integer  "answers_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["answers_id"], name: "index_question_x_answers_on_answers_id"
    t.index ["questions_id"], name: "index_question_x_answers_on_questions_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "Question"
    t.integer  "Section"
    t.string   "Descriptions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.string   "status"
    t.string   "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_x_clasifications", force: :cascade do |t|
    t.integer  "sites_id"
    t.integer  "clasifications_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["clasifications_id"], name: "index_site_x_clasifications_on_clasifications_id"
    t.index ["sites_id"], name: "index_site_x_clasifications_on_sites_id"
  end

  create_table "site_x_types", force: :cascade do |t|
    t.integer  "sites_id"
    t.integer  "types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sites_id"], name: "index_site_x_types_on_sites_id"
    t.index ["types_id"], name: "index_site_x_types_on_types_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "TelNumber"
    t.string   "Municipality"
    t.string   "State"
    t.string   "Colony"
    t.integer  "OutdoorNumbe"
    t.integer  "IndoorNumbe"
    t.string   "Name"
    t.text     "Description"
    t.decimal  "Latitud"
    t.decimal  "Longitud"
    t.integer  "scores_id"
    t.integer  "businessmans_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "IsFree"
    t.index ["businessmans_id"], name: "index_sites_on_businessmans_id"
    t.index ["scores_id"], name: "index_sites_on_scores_id"
  end

  create_table "types", force: :cascade do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
