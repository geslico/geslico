class VTetraPlanIssisController < ApplicationController

  before_action :require_login
  load_and_authorize_resource  
  # before_action :set_v_tetra_plan_issi, only: [:show, :edit, :update, :destroy]

  # GET /v_tetra_plan_issis
  # GET /v_tetra_plan_issis.json
  def index    
    @v_tetra_plan_issis = VTetraPlanIssi.order('nISSIInicio asc')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_v_tetra_plan_issi
    #   @v_tetra_plan_issi = VTetraPlanIssi.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_tetra_plan_issi_params
      params.fetch(:v_tetra_plan_issi, {})
    end
end
