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

ActiveRecord::Schema.define(:version => 20140609111347) do

  create_table "anexos", :force => true do |t|
    t.string   "anexos"
    t.string   "descricao"
    t.integer  "bolsista_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "anexos", ["bolsista_id"], :name => "index_anexos_on_bolsista_id"

  create_table "bancos", :force => true do |t|
    t.string   "nome_banco"
    t.string   "numero_banco"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "bolsas", :force => true do |t|
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.integer  "bolsista_id"
    t.integer  "setor_id"
    t.string   "data_entrada"
    t.string   "horario_atuacao"
    t.string   "data_saida"
    t.string   "campu"
    t.string   "atribuicoes"
    t.string   "motivo"
    t.string   "situacao",        :default => "Ativo"
  end

  create_table "bolsasetors", :force => true do |t|
    t.string   "data_entrada"
    t.string   "horario_atuacao"
    t.string   "data_saida"
    t.string   "campu"
    t.text     "atribuicoes"
    t.string   "situacao"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "setor_id"
    t.integer  "bolsa_id"
  end

  create_table "bolsistas", :force => true do |t|
    t.string   "cpf"
    t.string   "matricula"
    t.string   "numero_pasta"
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "tel_residencial"
    t.string   "tel_celular"
    t.string   "email"
    t.string   "rg"
    t.string   "nome_mae"
    t.integer  "semestre_inicial_curso"
    t.integer  "ano_inicial_curso"
    t.text     "observacao"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.date     "data"
    t.integer  "curso_id"
    t.string   "bolsadicional"
    t.string   "complemento"
    t.string   "periodo_atual"
    t.integer  "anexo_id"
    t.string   "descricao"
  end

  create_table "contas", :force => true do |t|
    t.string   "numero_agencia"
    t.string   "numero_conta"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "banco_id"
    t.integer  "bolsista_id"
  end

  create_table "cursos", :force => true do |t|
    t.string   "nome_curso"
    t.string   "numero_periodo"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "requisicaos", :force => true do |t|
    t.string   "data_requisicao"
    t.integer  "quantidade_bolsista"
    t.string   "horario_bolsista"
    t.string   "assunto"
    t.string   "nome_de_bolsista"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.text     "conteudo"
    t.string   "documento"
    t.integer  "setor_id"
    t.string   "setor_emissor"
  end

  create_table "setors", :force => true do |t|
    t.string   "nome_setor"
    t.string   "coordenador"
    t.string   "email_setor"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "ramal"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "name"
    t.string   "login"
    t.boolean  "enabled"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["enabled"], :name => "index_usuarios_on_enabled"
  add_index "usuarios", ["login"], :name => "index_usuarios_on_login"
  add_index "usuarios", ["name"], :name => "index_usuarios_on_name"
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
