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

ActiveRecord::Schema.define(version: 20150811175522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allies", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mercury_images", force: :cascade do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "highlight"
    t.integer  "rating"
    t.integer  "raters"
  end

  add_index "news", ["category_id"], name: "index_news_on_category_id", using: :btree

  create_table "opinions", force: :cascade do |t|
    t.text     "opinion"
    t.string   "name"
    t.string   "position"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "number"
    t.boolean  "visible"
  end

  create_table "page_contents", force: :cascade do |t|
    t.string   "title"
    t.string   "title1"
    t.string   "content"
    t.string   "content1"
    t.string   "content2"
    t.string   "content3"
    t.string   "content4"
    t.string   "content5"
    t.string   "content6"
    t.string   "content7"
    t.string   "content8"
    t.string   "content9"
    t.string   "content10"
    t.string   "content11"
    t.string   "content12"
    t.string   "content13"
    t.string   "content14"
    t.string   "content15"
    t.string   "content16"
    t.string   "content17"
    t.string   "content18"
    t.string   "content19"
    t.string   "content20"
    t.string   "content21"
    t.string   "content22"
    t.string   "content23"
    t.string   "content24"
    t.string   "content25"
    t.string   "content26"
    t.string   "content27"
    t.string   "content28"
    t.string   "content29"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.string   "image4"
    t.string   "image5"
    t.string   "image6"
    t.string   "image7"
    t.string   "image8"
    t.string   "image9"
    t.string   "image10"
  end

  create_table "procedures", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.boolean  "startinglicence"
    t.boolean  "taxpayment"
    t.boolean  "historial"
    t.boolean  "transfer"
    t.boolean  "phototicket"
    t.boolean  "soat"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "status"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicle_images", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "vehicle_images", ["vehicle_id"], name: "index_vehicle_images_on_vehicle_id", using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "state"
    t.integer  "price"
    t.integer  "transmission"
    t.integer  "gas"
    t.string   "vehicle_model"
    t.string   "engine"
    t.integer  "mileage"
    t.string   "upholstery"
    t.integer  "vehicle_type"
    t.boolean  "used"
    t.string   "video"
    t.string   "color"
    t.integer  "license_plate"
    t.text     "comments"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "air_conditioning"
    t.boolean  "shield"
    t.string   "license_plate_city"
    t.integer  "brand_id"
    t.integer  "vehicle_class"
  end

  add_index "vehicles", ["brand_id"], name: "index_vehicles_on_brand_id", using: :btree

  add_foreign_key "news", "categories"
  add_foreign_key "vehicle_images", "vehicles"
  add_foreign_key "vehicles", "brands"
end
