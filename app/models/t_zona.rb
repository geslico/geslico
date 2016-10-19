class TZona < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TZonasSICAM"

	#relación con TSede
	has_many :TSede, :foreign_key => "nCodZona"

end
