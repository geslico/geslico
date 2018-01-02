class Zona < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TZonasSICAM"

	has_many :sedes, :foreign_key => "nZona", :primary_key => "nCodZona"
	has_many :sicam_persona_grupos,	:foreign_key => "SUPPORT_GROUP_NAME", :primary_key => "cGrupo"
end
