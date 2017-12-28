class Edificio < ApplicationRecord

	self.table_name ="geslico.dbo.TEdificios"
	
	has_many :edificios, :foreign_key => "nCodEdificio"
	
end