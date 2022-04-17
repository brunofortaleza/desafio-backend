class CreateExpenseTypes < ActiveRecord::Migration[6.0]
  def change
    unless table_exists?(:expense_types)
      create_table :expense_types do |t|
        t.string :description, comment: 'Descrição da Subcota'

        t.timestamps
      end
    end
  end
end
