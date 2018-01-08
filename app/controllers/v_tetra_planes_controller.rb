include CommonHelper

class VTetraPlanesController < ApplicationController

	before_action :require_login

	def index
		@q = VTetraPlanIssi.ransack params[:q]
		@v_tetra_plan_issis_csv = @q.result
		@v_tetra_plan_issis = @q.result.page(params[:page])

		@q = VTetraPlanGssi.ransack params[:q]
		@v_tetra_plan_gssis_csv = @q.result
		@v_tetra_plan_gssis  = @q.result.page(params[:page])

		respond_to do |format|
			format.html    		
    		if params[:plan]=="issi"
				format.csv { send_data to_csv(@v_tetra_plan_issis_csv, VTetraPlanIssi), 
				filename: "planissi-#{Date.today}.csv" }    					
			elsif params[:plan]=="gssi"
				format.csv { send_data to_csv(@v_tetra_plan_gssis_csv, VTetraPlanGssi), 
				filename: "plangssi-#{Date.today}.csv" }
    		end
    	end
	end

end
