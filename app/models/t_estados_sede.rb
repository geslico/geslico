class TEstadosSede < ActiveRecord::Base
	self.table_name ="geslico.dbo.TEstadosSedes"

	has_many :TSede, :foreign_key => "nCodEstado"
	
end
