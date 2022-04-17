class CreateLegislatures < ActiveRecord::Migration[6.0]
  def change
    unless table_exists?(:legislatures)
      create_table :legislatures do |t|
        t.integer :year, comment: 'Número da Legislatura'

        t.timestamps
      end
    end
  end
end
