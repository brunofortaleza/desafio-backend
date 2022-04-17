class DeputiesController < ApplicationController
  before_action :set_deputy, only: %i[ show ]

  # GET /deputies or /deputies.json
  def index
    @deputies = Deputy.all
  end

  # GET /deputies/1 or /deputies/1.json
  def show
    @deputy = set_deputy
    @expenses = @deputy&.expenses
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deputy
      @deputy = Deputy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deputy_params
      params.require(:deputy).permit(:name, :register_id, :cpf, :chair_number, :state, :political_party, :legislature_id)
    end
end
