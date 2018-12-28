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

ActiveRecord::Schema.define(version: 20181218100524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessoires", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "aphoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apictures", force: :cascade do |t|
    t.string "apicture"
    t.integer "accessoire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bijous", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "bphoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boutiques", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bpictures", force: :cascade do |t|
    t.string "bpicture"
    t.integer "bijou_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enfants", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "ephoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "epictures", force: :cascade do |t|
    t.string "epicture"
    t.integer "enfant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lifestyles", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "lphoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lpictures", force: :cascade do |t|
    t.string "lpicture"
    t.integer "lifestyle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "luminaires", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "luphoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lupictures", force: :cascade do |t|
    t.string "lupicture"
    t.integer "luminaire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mapictures", force: :cascade do |t|
    t.string "mapicture"
    t.integer "maroquinerie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maroquineries", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "maphoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobiliers", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "mphoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mpictures", force: :cascade do |t|
    t.string "mpicture"
    t.integer "mobilier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "picture"
    t.integer "verrerie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "realisations", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.string "rphoto"
    t.string "adresse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rpictures", force: :cascade do |t|
    t.string "rpicture"
    t.integer "realisation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "tphoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tepictures", force: :cascade do |t|
    t.string "tepicture"
    t.integer "textile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textiles", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "tephoto"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tpictures", force: :cascade do |t|
    t.string "tpicture"
    t.integer "table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verreries", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.integer "prix"
    t.string "categorie"
    t.string "photo"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
