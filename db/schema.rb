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

ActiveRecord::Schema.define(:version => 20120206105119) do

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
    t.string   "annualperennial"
    t.string   "soil_type"
    t.integer  "hardiness_range"
    t.string   "indoorsoutdoors"
    t.integer  "sow_from_last_front"
    t.integer  "harvest_from_sowing"
    t.string   "determinateindeterminate"
    t.string   "type_of_support"
    t.string   "nitrogen_fixer"
    t.string   "cast_shade"
    t.string   "sprawls"
    t.string   "viney"
    t.string   "insectiary"
    t.string   "mulcher"
    t.string   "deepshallowroot"
    t.string   "medicinal"
    t.integer  "harvest_from_last_frost"
    t.string   "how_much_sun"
    t.string   "soil_quality"
    t.string   "soil_acidity"
    t.string   "warning"
    t.string   "bush_plant"
    t.string   "edible"
    t.integer  "height"
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
