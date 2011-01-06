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

ActiveRecord::Schema.define(:version => 20110104201146) do

  create_table "configuracoes", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "esferas", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idiomas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instituicoes", :force => true do |t|
    t.string   "nome"
    t.string   "logradouro"
    t.integer  "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "estado_id"
    t.string   "pais_id"
    t.string   "slogan"
    t.string   "configuracao_id"
    t.string   "modalidade_id"
    t.string   "rede_id"
    t.string   "esfera_id"
    t.string   "servico_id"
    t.string   "pagamento_id"
    t.string   "idioma_id"
    t.string   "nomediretor"
    t.string   "emaildiretor"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instituicoes", ["configuracao_id"], :name => "index_instituicoes_on_configuracao_id"
  add_index "instituicoes", ["esfera_id"], :name => "index_instituicoes_on_esfera_id"
  add_index "instituicoes", ["estado_id"], :name => "index_instituicoes_on_estado_id"
  add_index "instituicoes", ["idioma_id"], :name => "index_instituicoes_on_idioma_id"
  add_index "instituicoes", ["modalidade_id"], :name => "index_instituicoes_on_modalidade_id"
  add_index "instituicoes", ["pagamento_id"], :name => "index_instituicoes_on_pagamento_id"
  add_index "instituicoes", ["pais_id"], :name => "index_instituicoes_on_pais_id"
  add_index "instituicoes", ["rede_id"], :name => "index_instituicoes_on_rede_id"
  add_index "instituicoes", ["servico_id"], :name => "index_instituicoes_on_servico_id"

  create_table "modalidades", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagamentos", :force => true do |t|
    t.string   "forma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paises", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "redes", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicos", :force => true do |t|
    t.string   "nivel"
    t.string   "descricao"
    t.float    "valormensal"
    t.float    "valoranual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
