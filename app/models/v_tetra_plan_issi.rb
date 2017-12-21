class VTetraPlanIssi < ApplicationRecord

	self.table_name ="geslico.dbo.VTetraPlanISSIs"	

	def self.external_column_names_to_csv
		return ['Inicio; Fin; Servicio; Tipo; ISSI Ocupados; ISSI Conectados; ISSI vistos ultimos 6 meses; ISSI Nunca Conectados']
	end 

	def self.column_names_to_csv 
		return self.column_names
	end 

end
