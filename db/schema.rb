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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141011115227) do

  create_table "assets", :force => true do |t|
    t.integer  "item_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
  end

  create_table "items", :force => true do |t|
    t.text "title"
    t.text "description"
    t.text "type"
  end

  create_table "manufacture_items", :force => true do |t|
    t.integer "manufacture_id"
    t.integer "item_id"
    t.text    "link"
  end

  create_table "manufacture_items_photos", :force => true do |t|
    t.integer  "manufacture_item_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "manufactures", :force => true do |t|
    t.text    "name"
    t.text    "description"
    t.text    "link"
    t.string  "image_file_name"
    t.string  "image_content_type"
    t.integer "image_file_size"
  end

  create_table "my_items", :force => true do |t|
    t.text    "title"
    t.text    "description"
    t.text    "state"
    t.text    "price"
    t.integer "item_id"
    t.integer "manufacture_item_id"
  end

  create_table "my_items_photos", :force => true do |t|
    t.integer  "my_item_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
