class TSede < ActiveRecord::Base

	self.table_name ="geslico.dbo.TSedes"

	belongs_to :TUnidad, :foreign_key => "nCodUni"
	belongs_to :TEstadosSede, :foreign_key => "nCodEstado"
	belongs_to :TAcronimosSedeEdr, :foreign_key => "nIdAcronimo"
	belongs_to :TEdificio, :foreign_key => "nCodEdificio"
	
	ransack_alias :buscon, :cNombre_or_cDireccion_or_TUnidad_cDenominacion_or_cDevicePool
end
