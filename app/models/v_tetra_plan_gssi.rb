class VTetraPlanGssi < ApplicationRecord
	self.table_name ="geslico.dbo.VTetraPlanGSSIs"

	def self.external_column_names_to_csv  
		return ['Inicio; Fin; Servicio; Definidos; Activos; Activos última semana; Activos último mes; Activos últimos 6 meses']
	end 

	def self.column_names_to_csv 
		return self.column_names
	end 
end

