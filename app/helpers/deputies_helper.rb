module DeputiesHelper

  def sum_of_expenses
    @expenses&.sum(:liquid_value)
  end

  def higher_expense
    @expenses&.maximum(:liquid_value)
  end
end
