class Puerto < ApplicationRecord

	self.table_name ="geslico.dbo.TPuertosER"

	belongs_to :edr , :foreign_key => "nCodElectronicaRed"
	belongs_to :tipo_puerto, :foreign_key => "nCodTipoPuerto"

	def poe
		PuertoPoe.poe(self.nCodElectronicaRed, self.cPuerto)
	end

	def trcp
		PuertoTRCP.trcp(self.nCodElectronicaRed, self.cPuerto)
	end

	def dispositivo
		DispositivoIP.dispositivo(self.nCodElectronicaRed, self.cPuerto)
	end
	
end