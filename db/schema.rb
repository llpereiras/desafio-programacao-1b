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

ActiveRecord::Schema.define(version: 20161105011702) do

  create_table "compradores", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string   "logradouro",   limit: 255
    t.integer  "comprador_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "enderecos", ["comprador_id"], name: "index_enderecos_on_comprador_id", using: :btree

  create_table "fornecedores", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "descricao",  limit: 255
    t.decimal  "preco",                  precision: 10, scale: 2
    t.integer  "quantidade", limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.string   "arquivo",    limit: 255
    t.integer  "status",     limit: 4,   default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.integer  "comprador_id",  limit: 4
    t.integer  "fornecedor_id", limit: 4
    t.integer  "produto_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "vendas", ["comprador_id"], name: "index_vendas_on_comprador_id", using: :btree
  add_index "vendas", ["fornecedor_id"], name: "index_vendas_on_fornecedor_id", using: :btree
  add_index "vendas", ["produto_id"], name: "index_vendas_on_produto_id", using: :btree

  add_foreign_key "enderecos", "compradores"
  add_foreign_key "vendas", "compradores"
  add_foreign_key "vendas", "fornecedores"
  add_foreign_key "vendas", "produtos"
end
