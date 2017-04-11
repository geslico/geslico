class VTetraPlanesController < ApplicationController
  
  before_action :require_login

  def index
    @v_tetra_plan_issis = VTetraPlanIssi.order('nISSIInicio asc')
    @v_tetra_plan_gssis = VTetraPlanGssi.order('nGSSIInicio asc')
  end
  
end
