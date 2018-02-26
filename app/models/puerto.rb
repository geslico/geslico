class Puerto < ApplicationRecord

	self.table_name ="geslico.dbo.TPuertosER"

	belongs_to :edr , :foreign_key => "nCodElectronicaRed"
	belongs_to :tipo_puerto, :foreign_key => "nCodTipoPuerto"

end