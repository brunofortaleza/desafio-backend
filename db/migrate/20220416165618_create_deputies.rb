class CreateDeputies < ActiveRecord::Migration[6.0]
  def change
    unless table_exists?(:deputies)
      create_table :deputies, comment: 'Armazena os Deputados' do |t|
        t.string :name, limit: 255, comment: 'Nome Parlamentar'
        t.integer :register_id, comment: 'Identificador Único do Parlamentar'
        t.string :cpf, comment: 'Cadastro de Pessoa Física'
        t.integer :chair_number, comment: 'Número da Carteira Parlamentar'
        t.string :state, comment: 'Sigla da UF'
        t.string :political_party, comment: 'Sigla do Partido'
        t.belongs_to :legislature, null: false, foreign_key: true

        t.timestamps
      end
    end
  end
end
