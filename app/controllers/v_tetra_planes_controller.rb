class VTetraPlanesController < ApplicationController
  
  before_action :require_login

  def index

    @q = VTetraPlanIssi.ransack params[:q]
    @v_tetra_plan_issis = @q.result.page(params[:page])

	@q = VTetraPlanGssi.ransack params[:q]
    @v_tetra_plan_gssis = @q.result.page(params[:page])
    
  end
  
end
