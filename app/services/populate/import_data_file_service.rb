class Populate::ImportDataFileService < ApplicationService
  require 'roo'

  ACTION = :populate

  private

  def populate
    xlsx = Roo::Excelx.new(params.tempfile)
    xlsx.each_row_streaming(offset: 1) do |row|
      next if row[5]&.value != 'TO'

      legislature = Legislature.find_or_create_by(year: row[4]&.value&.to_i)
      deputy = create_deputy(row, legislature)
      expense_type = ExpenseType.find_or_create_by(description: row[9]&.value)
      create_expense(row, expense_type, deputy)
    end
  end

  def create_deputy(row, legislature)
    Deputy.find_or_create_by(
      name: row[0]&.value,
      cpf: row[1]&.value,
      register_id: row[2]&.value,
      chair_number: row[3]&.value,
      state: row[5]&.value,
      political_party: row[6]&.value,
      legislature_id: legislature&.id
    )
  end

  def create_expense(row, expense_type, deputy)
    Expense.find_or_create_by(
      number_sub: row[8]&.value,
      number_speficic: row[10]&.value,
      description_specific: row[11]&.value,
      provider: row[12]&.value,
      cpf_cnpj: row[13]&.value,
      document_number: row[14]&.value,
      document_type: row[15]&.value,
      emission_date: row[16]&.value,
      document_value: row[17]&.value,
      retention_value: row[18]&.value,
      liquid_value: row[19]&.value,
      month: row[20]&.value,
      year: row[21]&.value,
      portion: row[22]&.value,
      passenger: row[23]&.value,
      stretch: row[24]&.value,
      batch: row[25]&.value,
      refund: row[26]&.value,
      restitution: row[27]&.value,
      document_id: row[28]&.value,
      url_document: row[29]&.value,
      expense_type_id: expense_type&.id,
      deputy_id: deputy&.id
    )
  end
end
