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

ActiveRecord::Schema.define(version: 20161104203146) do

  create_table "compradores", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "enderecos", ["cliente_id"], name: "index_enderecos_on_cliente_id"

  create_table "fornecedores", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "descricao"
    t.decimal  "preco",      precision: 10, scale: 2
    t.integer  "quantidade"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "fornecedor_id"
    t.integer  "produto_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "vendas", ["cliente_id"], name: "index_vendas_on_cliente_id"
  add_index "vendas", ["fornecedor_id"], name: "index_vendas_on_fornecedor_id"
  add_index "vendas", ["produto_id"], name: "index_vendas_on_produto_id"

end
