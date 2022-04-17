class Expense < ApplicationRecord
  belongs_to :deputy
  belongs_to :expense_type

  def emission_date
    return unless self[:emission_date].present?

    I18n.l(self[:emission_date], format: '%d/%m/%Y')
  end
end
