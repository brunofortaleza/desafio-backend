# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_16_194014) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deputies", comment: "Armazena os Deputados", force: :cascade do |t|
    t.string "name", limit: 255, comment: "Nome Parlamentar"
    t.integer "register_id", comment: "Identificador Único do Parlamentar"
    t.string "cpf", comment: "Cadastro de Pessoa Física"
    t.integer "chair_number", comment: "Número da Carteira Parlamentar"
    t.string "state", comment: "Sigla da UF"
    t.string "political_party", comment: "Sigla do Partido"
    t.bigint "legislature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["legislature_id"], name: "index_deputies_on_legislature_id"
  end

  create_table "expense_types", force: :cascade do |t|
    t.string "description", comment: "Descrição da Subcota"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", comment: "Despesas", force: :cascade do |t|
    t.integer "number_sub", comment: "Número da Subcota"
    t.integer "number_speficic", comment: "Número da Especificação da Subcota"
    t.string "description_specific", comment: "Descrição da Especificação da Subcota"
    t.string "provider", comment: "Fornecedor"
    t.bigint "document_number", comment: "Número do Documento"
    t.string "cpf_cnpj", comment: "CNPJ/CPF"
    t.integer "document_type", comment: "Indicativo de Tipo de Documento Fiscal"
    t.date "emission_date", comment: "Data de Emissão"
    t.decimal "document_value", precision: 12, scale: 2, comment: "Valor do Documento"
    t.decimal "retention_value", precision: 12, scale: 2, comment: "Valor da Glosa"
    t.decimal "liquid_value", precision: 12, scale: 2, comment: "Valor Líquido"
    t.integer "month", comment: "Mês"
    t.integer "year", comment: "Ano"
    t.integer "portion", comment: "Número da Parcela"
    t.string "passenger", comment: "Passageiro"
    t.string "stretch", comment: "Trecho"
    t.string "batch", comment: "Número do Lote"
    t.string "refund", comment: "Número do Ressarcimento"
    t.decimal "restitution", precision: 12, scale: 2, comment: "Valor da Restituição"
    t.integer "document_id", comment: "Identificação do documento"
    t.string "url_document", comment: "URL do documento"
    t.bigint "expense_type_id", null: false
    t.bigint "deputy_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deputy_id"], name: "index_expenses_on_deputy_id"
    t.index ["expense_type_id"], name: "index_expenses_on_expense_type_id"
  end

  create_table "legislatures", force: :cascade do |t|
    t.integer "year", comment: "Número da Legislatura"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "deputies", "legislatures"
  add_foreign_key "expenses", "deputies"
  add_foreign_key "expenses", "expense_types"
end
