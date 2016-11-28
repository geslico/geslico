class TSicamPersonaGrupo < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.SICAM_PERSONAS_GRUPOS"

	belongs_to :t_zona, :foreign_key =>	"SUPPORT_GROUP_NAME", :primary_key => "cGrupo"
end