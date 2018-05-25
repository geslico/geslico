class Componente < ApplicationRecord

	self.table_name ="geslico.dbo.TComponentesRed"

	belongs_to :catalogo, :foreign_key => "nCodTipoComponente", :primary_key=> "nCodTipoComponente" 
	belongs_to :sede, :foreign_key => "nCodSede", :primary_key=> "nCodSede" 
	belongs_to :tipo_ubicacion, :foreign_key => "nCodUbicacion", :primary_key=> "id" 

	def self.external_column_names_to_csv 
		return ['Cod. Componente; Nº Serie; Nº Bien']
	end 
	
	def self.column_names_to_csv
		return %w{nCodComponente cSerie cBien}
	end

end