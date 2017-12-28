module CommonHelper

	def to_csv(data, model)		
		CSV.generate(headers: true) do |csv|
			csv <<  model.external_column_names_to_csv

			data.each do |field|
				csv << model.column_names_to_csv.map{ |attr| field.send(attr) }
			end
		end.encode('utf-8')
	end
end
