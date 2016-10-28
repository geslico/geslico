class TZona < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TZonasSICAM"

	has_many :TSede, :foreign_key => "nZona", :primary_key => "nCodZona"
	has_many :TSicamPersonaGrupo,	:foreign_key => "SUPPORT_GROUP_NAME", :primary_key => "cGrupo"
end
