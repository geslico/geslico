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

	def sede_edr_map_url(cod_sede)
		require "net/http"
		map_url = URI.parse("#{get_adjuntos_url}/#{cod_sede}/#{cod_sede}V.jpg")
		req = Net::HTTP.new(map_url.host, map_url.port)
		res = req.request_head(map_url.path)
	
		if res.code == "200"
		  return map_url
		else
		  return nil
		end  	
	end 	
end
