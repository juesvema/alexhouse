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

ActiveRecord::Schema.define(version: 20170712193150) do

  create_table "hoteles", force: :cascade do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "ubicacion"
    t.string   "descripcion"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.string   "imagen1_file_name"
    t.string   "imagen1_content_type"
    t.integer  "imagen1_file_size"
    t.datetime "imagen1_updated_at"
    t.string   "imagen2_file_name"
    t.string   "imagen2_content_type"
    t.integer  "imagen2_file_size"
    t.datetime "imagen2_updated_at"
    t.string   "imagen3_file_name"
    t.string   "imagen3_content_type"
    t.integer  "imagen3_file_size"
    t.datetime "imagen3_updated_at"
    t.string   "url"
  end

  create_table "idiomas", force: :cascade do |t|
    t.string   "modalidad"
    t.string   "idioma"
    t.string   "imagen"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "notis", force: :cascade do |t|
    t.string   "imagen"
    t.string   "titulo"
    t.string   "contenido"
    t.string   "categoria"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "zapateria", force: :cascade do |t|
    t.string   "imagen"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "nombre"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.string   "imagen1_file_name"
    t.string   "imagen1_content_type"
    t.integer  "imagen1_file_size"
    t.datetime "imagen1_updated_at"
    t.string   "imagen2_file_name"
    t.string   "imagen2_content_type"
    t.integer  "imagen2_file_size"
    t.datetime "imagen2_updated_at"
  end

end
