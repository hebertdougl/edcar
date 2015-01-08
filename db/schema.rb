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

ActiveRecord::Schema.define(version: 20150107021826) do

  create_table "clientes", force: true do |t|
    t.string   "nome_cliente"
    t.string   "cpf"
    t.string   "rg"
    t.string   "telefone_celular"
    t.string   "telefone_residencial"
    t.string   "email"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marca_veiculos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordem_servicos", force: true do |t|
    t.string   "numero"
    t.string   "data"
    t.string   "valor"
    t.string   "placa"
    t.string   "quilometragem"
    t.string   "garantia"
    t.string   "pecas"
    t.string   "descricao"
    t.integer  "veiculo_id"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "veiculos", force: true do |t|
    t.string   "modelo"
    t.integer  "marca_veiculo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
