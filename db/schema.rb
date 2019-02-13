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

ActiveRecord::Schema.define(version: 20190211100157) do

  create_table "acces_sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "saccess_id"
    t.bigint "sector_id"
    t.index ["saccess_id"], name: "index_acces_sectors_on_saccess_id"
    t.index ["sector_id"], name: "index_acces_sectors_on_sector_id"
  end

  create_table "bibliographies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "abbreviation"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "components", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coordinates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "sector_id"
    t.decimal "x", precision: 15, scale: 10
    t.decimal "y", precision: 15, scale: 10
    t.decimal "height", precision: 10
    t.string "ctype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "xstereo", precision: 15, scale: 10
    t.decimal "ystereo", precision: 15, scale: 10
    t.string "perimeter"
    t.decimal "xdegree", precision: 15, scale: 10, default: "0.0", null: false
    t.decimal "xmin", precision: 15, scale: 10, default: "0.0", null: false
    t.decimal "xsec", precision: 15, scale: 10, default: "0.0", null: false
    t.decimal "ydegree", precision: 15, scale: 10, default: "0.0", null: false
    t.decimal "ymin", precision: 15, scale: 10, default: "0.0", null: false
    t.decimal "ysec", precision: 15, scale: 10, default: "0.0", null: false
    t.index ["sector_id"], name: "fk_rails_c21f8410af"
  end

  create_table "counties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "degree"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "integrities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "degree"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "land_sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "land_id"
    t.bigint "sector_id"
    t.index ["land_id"], name: "index_land_sectors_on_land_id"
    t.index ["sector_id"], name: "index_land_sectors_on_sector_id"
  end

  create_table "lands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monument_sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "monument_id"
    t.bigint "sector_id"
    t.index ["monument_id"], name: "index_monument_sectors_on_monument_id"
    t.index ["sector_id"], name: "index_monument_sectors_on_sector_id"
  end

  create_table "monuments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "sector_id"
    t.string "imag_type"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["sector_id"], name: "index_photos_on_sector_id"
  end

  create_table "preservation_sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "preservation_id"
    t.bigint "sector_id"
    t.index ["preservation_id"], name: "index_preservation_sectors_on_preservation_id"
    t.index ["sector_id"], name: "index_preservation_sectors_on_sector_id"
  end

  create_table "preservations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saccesses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scategories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sector_bibliographies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "sector_id"
    t.bigint "bibliography_id"
    t.string "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bibliography_id"], name: "index_sector_bibliographies_on_bibliography_id"
    t.index ["sector_id"], name: "index_sector_bibliographies_on_sector_id"
  end

  create_table "sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "locality"
    t.string "village"
    t.bigint "county_id"
    t.string "site_type"
    t.string "name"
    t.string "point"
    t.string "country", limit: 100
    t.string "tower"
    t.string "institution"
    t.string "lmi"
    t.string "map_code"
    t.bigint "coordinate_id"
    t.string "d_length"
    t.string "d_width"
    t.string "d_height"
    t.string "d_o"
    t.string "d_type"
    t.string "area"
    t.text "description"
    t.string "soil_type"
    t.string "chronology"
    t.string "preservation"
    t.bigint "component_id"
    t.string "form"
    t.string "location"
    t.string "access"
    t.string "risk"
    t.text "archaeology"
    t.string "pat_value"
    t.text "remark"
    t.string "polygon"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.string "ran"
    t.string "siruta"
    t.string "property"
    t.string "owner"
    t.string "address"
    t.string "cadastral"
    t.string "topo"
    t.string "site_categ"
    t.string "relief"
    t.string "river"
    t.string "stratigraphy"
    t.string "research"
    t.string "d_east"
    t.string "d_west"
    t.string "d_north"
    t.string "d_south"
    t.string "flood", limit: 5
    t.string "rain"
    t.string "fire", limit: 5
    t.string "animal", limit: 5
    t.string "insect", limit: 5
    t.string "storm", limit: 5
    t.string "water", limit: 5
    t.string "earthquake", limit: 5
    t.string "landslide", limit: 5
    t.string "salt", limit: 5
    t.string "acid", limit: 5
    t.string "demolition", limit: 5
    t.string "partial", limit: 5
    t.string "vandalism", limit: 5
    t.string "theft", limit: 5
    t.string "arson", limit: 5
    t.string "research_type"
    t.string "geophysics"
    t.string "restoration"
    t.string "sect_responsible"
    t.string "discovery"
    t.integer "scategory_id"
    t.integer "preservation_id"
    t.string "national"
    t.string "urbanism"
    t.string "other"
    t.string "agriculture", limit: 5
    t.string "forest", limit: 5
    t.decimal "buffer_area", precision: 8, scale: 3
    t.decimal "total_area", precision: 8, scale: 3
    t.decimal "component_area", precision: 8, scale: 3
    t.string "wholeness_detail"
    t.string "intactness_detail"
    t.string "visintegrity_detail"
    t.string "absthreats_detail"
    t.string "substance"
    t.string "construction_layout"
    t.string "setting"
    t.string "integrity"
    t.string "authenticity"
    t.string "importance"
    t.string "visitors_no"
    t.string "capacity"
    t.integer "population"
    t.integer "buffer_population"
    t.integer "total_population"
    t.integer "pop_year"
    t.integer "entry_year"
    t.string "document_no"
    t.string "museum"
    t.text "museum_obs"
    t.string "indicators"
    t.string "mon_method"
    t.string "mon_frequency"
    t.string "mon_records"
    t.bigint "whole_id"
    t.bigint "intact_id"
    t.bigint "integrity_id"
    t.bigint "threat_id"
    t.index ["component_id"], name: "index_sectors_on_component_id"
    t.index ["coordinate_id"], name: "index_sectors_on_coordinate_id"
    t.index ["county_id"], name: "index_sectors_on_county_id"
    t.index ["intact_id"], name: "index_sectors_on_intact_id"
    t.index ["integrity_id"], name: "index_sectors_on_integrity_id"
    t.index ["threat_id"], name: "index_sectors_on_threat_id"
    t.index ["whole_id"], name: "index_sectors_on_whole_id"
  end

  create_table "threats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "degree"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "role", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "wholes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "degree"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "acces_sectors", "saccesses"
  add_foreign_key "acces_sectors", "sectors"
  add_foreign_key "coordinates", "sectors"
  add_foreign_key "land_sectors", "lands"
  add_foreign_key "land_sectors", "sectors"
  add_foreign_key "monument_sectors", "monuments"
  add_foreign_key "monument_sectors", "sectors"
  add_foreign_key "photos", "sectors"
  add_foreign_key "preservation_sectors", "preservations"
  add_foreign_key "preservation_sectors", "sectors"
  add_foreign_key "sector_bibliographies", "bibliographies"
  add_foreign_key "sector_bibliographies", "sectors"
  add_foreign_key "sectors", "components"
  add_foreign_key "sectors", "coordinates"
  add_foreign_key "sectors", "counties"
  add_foreign_key "sectors", "intacts"
  add_foreign_key "sectors", "integrities"
  add_foreign_key "sectors", "threats"
  add_foreign_key "sectors", "wholes"
end
