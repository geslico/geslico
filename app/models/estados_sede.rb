class EstadosSede < ApplicationRecord
	self.table_name ="geslico.dbo.TEstadosSedes"

	has_many :estados_sedes, :foreign_key => "nCodEstado"
	
end
