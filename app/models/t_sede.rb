class TSede < ActiveRecord::Base

	self.table_name ="geslico.dbo.TSedes"

	belongs_to :TUnidad, :foreign_key => "nCodUni"
	belongs_to :TEstadosSede, :foreign_key => "nCodEstado"
	belongs_to :TAcronimosSedeEdr, :foreign_key => "nIdAcronimo"
	belongs_to :TEdificio, :foreign_key => "nCodEdificio"
	belongs_to :TDistrito, :foreign_key => "nDistrito"
	belongs_to :TDevicePool, :foreign_key => "cDevicePool"
	belongs_to :TZona, :foreign_key => "nZona"
	
	ransack_alias :buscon, :cNombre_or_cDireccion_or_TUnidad_cDenominacion_or_cDevicePool
end
