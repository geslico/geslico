class ActuacionesLinea < ApplicationRecord

	self.table_name ="geslico.dbo.THistoricoActuacionesLineas"	
	self.primary_key = "nCodActuacion"

    belongs_to :linea, :foreign_key => "nLinea", :primary_key=> "nLinea"

end
