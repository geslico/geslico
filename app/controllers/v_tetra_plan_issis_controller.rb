class VTetraPlanIssisController < ApplicationController

  before_action :require_login
  load_and_authorize_resource  
  
  def index    
    #@v_tetra_plan_issis = VTetraPlanIssi.order('nISSIInicio asc')
    @q = VTetraPlanIssi.ransack params[:q]     
    @v_tetra_plan_issis = @q.result.page(params[:page])
  end

end
