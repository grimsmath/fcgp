# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_24_050008) do

  create_table "alerts", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title"
    t.text "message"
    t.datetime "begins"
    t.datetime "ends"
    t.integer "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badges", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title"
    t.string "awarded"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title"
    t.boolean "enabled"
    t.integer "parent_id"
    t.string "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "name"
    t.index ["ancestry"], name: "index_categories_on_ancestry"
    t.index ["id"], name: "index_categories_on_id"
  end

  create_table "category_vendors", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "category_id"
    t.integer "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certifications", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title"
    t.string "awarded"
    t.text "notes"
    t.integer "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.integer "assetable_id"
    t.string "assetable_type", limit: 30
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "dynamic_routers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "street1"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.integer "locatable_id"
    t.string "locatable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "super_admin", default: false
    t.boolean "admin", default: false
    t.boolean "moderator", default: false
    t.boolean "email_only", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.string "current_sign_in_ip"
    t.datetime "last_sign_in_at"
    t.string "last_sign_in_ip"
    t.boolean "accepted"
    t.boolean "enabled", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "company"
    t.string "topic"
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", null: false
    t.string "title", null: false
    t.string "sub_title"
    t.text "description"
    t.text "body"
    t.integer "member_id"
    t.integer "parent_id"
    t.string "ancestry"
    t.boolean "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "icon"
    t.float "order"
    t.index ["ancestry"], name: "index_pages_on_ancestry"
    t.index ["id"], name: "index_pages_on_id"
  end

  create_table "photos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "title"
    t.integer "vendor_id"
    t.index ["vendor_id"], name: "index_photos_on_vendor_id"
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_initial"
    t.string "last_name"
    t.string "gender"
    t.string "birth_month"
    t.string "birth_day"
    t.string "phone"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "body"
    t.boolean "enabled", default: true
    t.float "rating", default: 0.0
    t.integer "member_id"
    t.integer "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "var", null: false
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["var"], name: "index_settings_on_var", unique: true
  end

  create_table "tags", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.boolean "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_vendors", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "vendor_id"
    t.integer "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.integer "logo_file_size"
    t.datetime "logo_updated_at"
    t.string "subscription_date"
    t.string "signup_date"
    t.boolean "enabled"
    t.boolean "paid"
    t.integer "member_id"
    t.float "staff_rating", default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "url"
    t.string "email"
    t.string "mon_open"
    t.string "tue_open"
    t.string "wed_open"
    t.string "thu_open"
    t.string "fri_open"
    t.string "sat_open"
    t.string "sun_open"
    t.string "mon_close"
    t.string "tue_close"
    t.string "wed_close"
    t.string "thu_close"
    t.string "fri_close"
    t.string "sat_close"
    t.string "sun_close"
    t.string "latitude"
    t.string "longitude"
    t.string "phone_work"
    t.string "phone_alt"
    t.string "phone_fax"
    t.boolean "featured"
    t.boolean "accepted"
  end

  create_table "versions", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end
