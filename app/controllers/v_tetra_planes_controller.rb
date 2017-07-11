class VTetraPlanesController < ApplicationController

	before_action :require_login

	def index
		@q = VTetraPlanIssi.ransack params[:q]
		@v_tetra_plan_issis = @q.result.page(params[:page])

		@q = VTetraPlanGssi.ransack params[:q]
		@v_tetra_plan_gssis = @q.result.page(params[:page])

		respond_to do |format|
    		format.html    		
    		if params[:plan]=="gssi"
    			format.csv { send_data @v_tetra_plan_gssis.to_csv, filename: "plangssi-#{Date.today}.csv" }
    		elsif params[:plan]=="issi"
    			format.csv { send_data @v_tetra_plan_issis.to_csv, filename: "planissi-#{Date.today}.csv" }    		
    		end
    	end
	end

end
