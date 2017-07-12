class TDistrito < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TDistritos"

	has_many :t_sedes, :foreign_key => "nDistrito", :primary_key=> "nDistrito"
		
end