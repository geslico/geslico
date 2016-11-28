class TSede < ActiveRecord::Base

	self.table_name ="geslico.dbo.TSedes"

	belongs_to :t_unidad, :foreign_key => "nCodUni", :primary_key=> "nCodUni"
	belongs_to :t_estados_sede, :foreign_key => "nCodEstado"
	belongs_to :t_acronimos_sede_edr, :foreign_key => "nIdAcronimo"
	belongs_to :t_edificio, :foreign_key => "nCodEdificio"
	belongs_to :t_distrito, :foreign_key => "nDistrito", :primary_key=> "nDistrito"
	belongs_to :t_device_pool, :foreign_key => "cDevicePool"

	belongs_to :t_zona, :foreign_key => "nZona"
	has_many   :t_sicam_persona_grupos, through: :t_zona, :foreign_key => "SUPPORT_GROUP_NAME"
	
	ransack_alias :buscon, :cNombre_or_cDireccion_or_TUnidad_cDenominacion_or_cDevicePool
end