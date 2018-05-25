class Endpoint < ApplicationRecord

	self.table_name ="geslico.dbo.TEndPoints"

	belongs_to :edr , :foreign_key => "nCodElectronicaRed"
		
end