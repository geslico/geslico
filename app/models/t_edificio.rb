class TEdificio < ApplicationRecord

	self.table_name ="geslico.dbo.TEdificios"
	
	has_many :t_edificios, :foreign_key => "nCodEdificio"
	
end