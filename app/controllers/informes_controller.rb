class InformesController < ApplicationController

	before_action :require_login, only: [:index]
   
	# GET /informes/sedes
	# GET /informes/radio
	# GET /informes/movil
	# GET /informes/fija
	# GET /informes/electronica
	# GET /informes/datos
	def index()

		type = getType()
		
		authorize! :index, Informe.types[type]['model']
		@title = Informe.types[type]['title']

		# Listado de los diferentes informes	
		if (params[:id] == nil)
			@q = Informe.where(nTipo: Informe.types[type]['id']).ransack()
			@informes = @q.result.page(params[:page]).per(25)
		# Descarga de un informe concreto		
		else
			@informe = Informe.find(params[:id]) 		
			@result = Informe.execute_statement(@informe.cSQL)
			if (@result != nil)	
				respond_to do | format |
					csv_file = to_informe_csv(@result)
					format.csv { send_data csv_file, :filename => "informe_#{params[:id]}_#{Date.today}.csv" }
				end
			end	  	
		end	
	end

	def getType()
		# Se obtine el tipo de informe quedándonos con la última parte del path y se comprueba 
		# si el usuario tiene permisos para entrar
		type = request.path.from(request.path.rindex('/')+1)
		# En el caso de la descarga de un informe la URL llega como sedes.csv, hay que quitarle la extensión
		if (type.index('.') != nil)
			type = type.to(type.index('.')-1)
		end	
		if (Informe.types[type] == nil) 
			flash[:danger] = "Acceso denegado"
		end		
		return type								
	end

	def to_informe_csv(data) 
		CSV.generate(headers: true) do |csv|
			if data.columns != nil
				csv <<  data.columns
			end	
			data.rows.each do |row|
				csv << row
			end
		end.encode('utf-8')
	end	
		
end