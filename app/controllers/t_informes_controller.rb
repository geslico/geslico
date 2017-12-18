class 
	TInformesController < ApplicationController

	before_action :require_login

	# GET /t_informes/campus
	def index_campus    
		@q = TInforme.ransack(nTipo_eq: 3)
		@t_informes = @q.result.page(params[:page]).per(25)
	end

	# GET /t_informes/campus/1
	def show_campus
		@t_informe = TInforme.find(params[:id]) 		
		@result = TInforme.execute_statement(@t_informe.cSQL)
		if (@result != nil)
			TInforme.to_csv(@result)
		end	
	end
end