module CommonHelper

	def to_csv(data, model)		
		CSV.generate(headers: true) do |csv|
			csv <<  model.external_column_names_to_csv

			data.each do |field|
				csv << model.column_names_to_csv.map{ |attr| field.send(attr) }
			end
		end.encode('utf-8')
	end

	def human_boolean(boolean)
		boolean ? 'Si' : 'No'
	end	

	def get_adjuntos_url()
		"http://geslic0"
	end	

	def check_url(url)
		require "net/http"

		req = Net::HTTP.new(url.host, url.port)
		res = req.request_head(url.path)
	
		if res.code == "200"
		  return url
		else
		  return nil
		end  	
	end 	
	
	def sede_folder_url(cod_sede)
		folder_url = URI.parse("#{get_adjuntos_url}/#{cod_sede}/")
		check_url(folder_url)
	end	

	def sede_edr_photos_url(cod_sede)
		photos_url = URI.parse("#{get_adjuntos_url}/#{cod_sede}/Fotos/")
		check_url(photos_url)
	end	
	
	def sede_edr_map_url(cod_sede)
		map_url = URI.parse("#{get_adjuntos_url}/#{cod_sede}/#{cod_sede}V.jpg")
		check_url(map_url)
	end	

	def fotos(cod_sede, rutas, remove_str)
			
		rutas_fotos_edr = SedeAdjunto.fotos(cod_sede, rutas)
		fotos = {}
		rutas_fotos_edr.each do |ruta_fotos|
			ruta_ficheros = ruta_fotos.cNombresFichero.to_s.split(";")
			ficheros = []
			directorios = {}
			ruta_ficheros.each do |fichero|
				# Fichero con path relativo delante (subdirectorio)
				if (!fichero.index("\\").nil?)
					if (directorios[fichero.first(fichero.index("\\"))].nil?)
						directorios[fichero.first(fichero.index("\\"))] = [] 
					end  
					directorios[fichero.first(fichero.index("\\"))] << [fichero, URI.escape(get_adjuntos_url() + "/" + cod_sede + ruta_fotos.cRuta + "/" + fichero)]
				# Subdirectorio sin fichero  
				elsif !fichero.include? "." 
					directorios << fichero      
				# Fichero jpg            
				elsif (fichero.last(3).casecmp("jpg") == 0)
					ficheros << [fichero, URI.escape(get_adjuntos_url() + "/" + cod_sede + ruta_fotos.cRuta + "/" + fichero)]
				end  
			end

			fotos[ruta_fotos.nIdRuta] = {}
			if (ruta_fotos.cRuta.length() > 1)
				ruta_fotos.cRuta.slice!(remove_str)
			end				
			fotos[ruta_fotos.nIdRuta]['ruta'] = ruta_fotos.cRuta
			fotos[ruta_fotos.nIdRuta]['directorios'] = directorios
			fotos[ruta_fotos.nIdRuta]['ficheros'] = ficheros	
		end	
		return fotos
	end  

end
