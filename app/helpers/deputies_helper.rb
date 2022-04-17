module DeputiesHelper

  def sum_of_expenses
    @expenses.sum(:liquid_value)
  end

  def higher_expense
    @expenses&.order(liquid_value: :desc)&.first&.liquid_value
  end
end
