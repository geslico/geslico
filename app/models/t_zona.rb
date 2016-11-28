class TZona < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TZonasSICAM"

	has_many :t_sedes, :foreign_key => "nZona", :primary_key => "nCodZona"
	has_many :t_sicam_persona_grupos,	:foreign_key => "SUPPORT_GROUP_NAME", :primary_key => "cGrupo"
end
