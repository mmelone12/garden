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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120221201148) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hzones", :force => true do |t|
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   :default => 1
    t.integer  "order_id"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "pay_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plant_groups", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.integer  "plant1"
  end

  add_index "plant_groups", ["project_id"], :name => "index_plant_groups_on_project_id"

  create_table "plants", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "plant_type"
    t.string   "image_path"
    t.string   "group"
    t.string   "annualperennial"
    t.integer  "height"
    t.integer  "diameter"
    t.string   "bush_plant_tree"
    t.string   "sow_inside_outside"
    t.integer  "germination_minimum"
    t.integer  "germination_maximum"
    t.integer  "sow_inches_apart_min"
    t.integer  "sow_inches_apart_max"
    t.integer  "plant_rows_apart_min"
    t.integer  "plant_rows_apart_max"
    t.decimal  "plant_inches_deep"
    t.integer  "thin_inches_apart_min"
    t.integer  "thin_inches_apart_max"
    t.integer  "sow_days_after_last_frost"
    t.integer  "transplant_outside"
    t.integer  "harvest_min"
    t.integer  "harvest_max"
    t.integer  "min_temp"
    t.integer  "hardiness_min"
    t.integer  "hardiness_max"
    t.string   "determinate_indeterminate"
    t.string   "support_type"
    t.string   "sun_needs"
    t.string   "soil_quality"
    t.string   "soil_moisture"
    t.string   "soil_acidity"
    t.string   "nitrogen_fixer"
    t.string   "casts_shade"
    t.string   "sprawls"
    t.string   "acts_as_support"
    t.string   "viney"
    t.string   "insectiary"
    t.string   "insectiary_attracts"
    t.string   "mulcher"
    t.string   "medicinal"
    t.string   "edible"
    t.string   "edible_how"
    t.string   "root_description"
    t.text     "description"
    t.text     "warning"
    t.string   "interesting_facts"
    t.string   "native_to_min"
    t.string   "native_to_max"
    t.string   "other_skill1"
    t.string   "other_skill2"
    t.string   "medicinal_uses"
    t.string   "super_plant"
    t.string   "sow_continuously"
    t.string   "sow_how_often"
    t.string   "harvest_continuously"
    t.string   "harvest_how_often"
    t.string   "alternative_sowing_boolean"
    t.string   "alternative_sowing_method"
    t.integer  "alternative_sow_before_lf"
    t.string   "pest_repellent"
    t.string   "pest_repellent_kinds"
    t.string   "fortress_plant"
    t.string   "nutrient1"
    t.string   "nutrient2"
    t.string   "nutrient3"
    t.string   "nutrient4"
    t.string   "wildlife_nurturer"
    t.string   "wildlife_kinds"
    t.string   "spike_root"
    t.string   "shelterbelter"
    t.string   "perennial_certainhzs"
    t.string   "perennial_min"
    t.string   "perennial_max"
    t.string   "guild_partner1"
    t.string   "guild_partner2"
    t.string   "guild_partner3"
    t.string   "guild_partner4"
    t.string   "guild_partner5"
    t.string   "guild_partner6"
    t.string   "fast_growing_green"
    t.string   "early_plant"
    t.string   "midseason_plant"
    t.string   "slow_growing_green"
    t.string   "fungal_pest_resistant"
    t.string   "fungal_pest_resistant_kinds"
    t.string   "drought_resistant"
    t.string   "viney_shade"
  end

  create_table "prelationships", :force => true do |t|
    t.integer  "pfollower_id"
    t.integer  "pfollowed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prelationships", ["pfollowed_id"], :name => "index_prelationships_on_followed_id"
  add_index "prelationships", ["pfollower_id"], :name => "index_prelationships_on_follower_id"

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",       :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
