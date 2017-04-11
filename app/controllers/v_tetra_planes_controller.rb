class VTetraPlanesController < ApplicationController
  
  before_action :require_login

  def index
    @q = VTetraPlanIssi.ransack params[:q]     
    @v_tetra_plan_issis = @q.result.page(params[:page])

    #@v_tetra_plan_issis = VTetraPlanIssi.order('nISSIInicio asc').ransack
    @v_tetra_plan_gssis = VTetraPlanGssi.order('nGSSIInicio asc')
  end
  
end
