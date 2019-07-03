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

ActiveRecord::Schema.define(version: 2019_07_03_203528) do

  create_table "carros", force: :cascade do |t|
    t.string "placa"
    t.integer "classe_id"
    t.integer "marca_id"
    t.integer "cor_id"
    t.integer "preco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classe_id"], name: "index_carros_on_classe_id"
    t.index ["cor_id"], name: "index_carros_on_cor_id"
    t.index ["marca_id"], name: "index_carros_on_marca_id"
    t.index ["preco_id"], name: "index_carros_on_preco_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cors", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "precos", force: :cascade do |t|
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
