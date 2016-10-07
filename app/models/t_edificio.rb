class TEdificio < ActiveRecord::Base

	self.table_name ="geslico.dbo.TEdificios"
	
	has_many :TEdificios, :foreign_key => "nCodEdificio"
	
end