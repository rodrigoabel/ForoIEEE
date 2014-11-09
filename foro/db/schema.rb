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

ActiveRecord::Schema.define(version: 20141109161208) do

  create_table "comentarios", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "tema_id"
    t.text     "comentario"
    t.date     "fecha"
    t.integer  "like"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["tema_id"], name: "index_comentarios_on_tema_id"
  add_index "comentarios", ["usuario_id"], name: "index_comentarios_on_usuario_id"

  create_table "tags", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temas", force: true do |t|
    t.integer  "usuario_id"
    t.string   "titulo"
    t.text     "resena"
    t.integer  "tag_id"
    t.integer  "like"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "temas", ["tag_id"], name: "index_temas_on_tag_id"
  add_index "temas", ["usuario_id"], name: "index_temas_on_usuario_id"

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "password"
    t.string   "correo"
    t.text     "firma"
    t.string   "username"
    t.integer  "numeromiembro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
