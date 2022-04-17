class Expense < ApplicationRecord
  belongs_to :deputy
  belongs_to :expense_type
end
