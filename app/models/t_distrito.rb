class TDistrito < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TDistritos"

	has_many :TSede, :foreign_key => "nDistrito", :primary_key=> "nDistrito"
		
end