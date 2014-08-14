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

ActiveRecord::Schema.define(version: 20140814025050) do

  create_table "addresses", force: true do |t|
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.integer  "vendor_id"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alerts", force: true do |t|
    t.string   "title"
    t.text     "message"
    t.datetime "begins"
    t.datetime "ends"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badges", force: true do |t|
    t.string   "title"
    t.string   "awarded"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "title"
    t.boolean  "enabled"
    t.integer  "parent_id"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "categories", ["ancestry"], name: "index_categories_on_ancestry"
  add_index "categories", ["id"], name: "index_categories_on_id"

  create_table "category_vendors", force: true do |t|
    t.integer  "category_id"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certifications", force: true do |t|
    t.string   "title"
    t.string   "awarded"
    t.text     "notes"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "dynamic_routers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_vendors", force: true do |t|
    t.integer  "member_id"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "admin",                  default: false
    t.boolean  "moderator",              default: false
    t.boolean  "email_only",             default: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.string   "current_sign_in_ip"
    t.datetime "last_sign_in_at"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "gender"
    t.string   "birth_month"
    t.string   "birth_day"
    t.string   "phone_home"
    t.string   "phone_work"
    t.string   "phone_mobile"
    t.string   "phone_fax"
    t.datetime "signup_date"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "accepted"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true

  create_table "pages", force: true do |t|
    t.string   "name",        null: false
    t.string   "title",       null: false
    t.string   "sub_title"
    t.text     "description"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.string   "ancestry"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon"
  end

  add_index "pages", ["ancestry"], name: "index_pages_on_ancestry"
  add_index "pages", ["id"], name: "index_pages_on_id"

  create_table "photos", force: true do |t|
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.integer  "vendor_id"
  end

  add_index "photos", ["vendor_id"], name: "index_photos_on_vendor_id"

  create_table "reviews", force: true do |t|
    t.text     "body"
    t.boolean  "enabled",    default: true
    t.float    "rating",     default: 0.0
    t.integer  "vendor_id"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true

  create_table "sqlite_sp_functions", id: false, force: true do |t|
    t.text "name"
    t.text "text"
  end

# Could not dump table "sqlite_stat1" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "sqlite_stat4" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "sqlite_vs_links_names", id: false, force: true do |t|
    t.text "name"
    t.text "alias"
  end

  create_table "sqlite_vs_properties", id: false, force: true do |t|
    t.text "parentType"
    t.text "parentName"
    t.text "propertyName"
    t.text "propertyValue"
  end

  create_table "tags", force: true do |t|
    t.string   "title"
    t.string   "name"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_vendors", id: false, force: true do |t|
    t.integer  "vendor_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "subscription_date"
    t.string   "signup_date"
    t.boolean  "enabled"
    t.boolean  "paid"
    t.float    "staff_rating",      default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "email"
    t.string   "mon_open"
    t.string   "tue_open"
    t.string   "wed_open"
    t.string   "thu_open"
    t.string   "fri_open"
    t.string   "sat_open"
    t.string   "sun_open"
    t.string   "mon_close"
    t.string   "tue_close"
    t.string   "wed_close"
    t.string   "thu_close"
    t.string   "fri_close"
    t.string   "sat_close"
    t.string   "sun_close"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "phone_work"
    t.string   "phone_alt"
    t.string   "phone_fax"
    t.boolean  "featured"
    t.boolean  "accepted"
  end

end
