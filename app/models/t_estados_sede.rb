class TEstadosSede < ApplicationRecord
	self.table_name ="geslico.dbo.TEstadosSedes"

	has_many :t_estados_sedes, :foreign_key => "nCodEstado"
	
end
