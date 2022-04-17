class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    unless table_exists?(:expenses)
      create_table :expenses, comment:'Despesas' do |t|
        t.integer :number_sub, comment: 'Número da Subcota'
        t.integer :number_speficic, comment: 'Número da Especificação da Subcota'
        t.string :description_specific, comment: 'Descrição da Especificação da Subcota'
        t.string :provider, comment: 'Fornecedor'
        t.bigint :document_number, comment:'Número do Documento'
        t.string :cpf_cnpj, comment: 'CNPJ/CPF'
        t.integer :document_type, comment: 'Indicativo de Tipo de Documento Fiscal'
        t.date :emission_date, comment: 'Data de Emissão'
        t.decimal :document_value, precision: 12, scale: 2, comment: 'Valor do Documento'
        t.decimal :retention_value, precision: 12, scale: 2, comment: 'Valor da Glosa'
        t.decimal :liquid_value, precision: 12, scale: 2, comment: 'Valor Líquido'
        t.integer :month, comment: 'Mês'
        t.integer :year, comment: 'Ano'
        t.integer :portion, comment: 'Número da Parcela'
        t.string :passenger, comment: 'Passageiro'
        t.string :stretch, comment: 'Trecho'
        t.string :batch, comment: 'Número do Lote'
        t.string :refund, comment: 'Número do Ressarcimento'
        t.decimal :restitution, precision: 12, scale: 2, comment: 'Valor da Restituição'
        t.integer :document_id, comment: 'Identificação do documento'
        t.string :url_document, comment: 'URL do documento'

        t.belongs_to :expense_type, null: false, foreign_key: true
        t.belongs_to :deputy, null: false, foreign_key: true

        t.timestamps
      end
    end
  end
end
