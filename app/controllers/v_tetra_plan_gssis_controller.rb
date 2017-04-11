class VTetraPlanGssisController < ApplicationController

  before_action :require_login
  load_and_authorize_resource  
  
  def index    
    @v_tetra_plan_gssis = VTetraPlanGssi.order('nGSSIInicio asc')
  end
  
end
