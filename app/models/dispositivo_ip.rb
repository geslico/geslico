class DispositivoIP < ApplicationRecord
	  
	self.table_name ="geslico.dbo.TDispositivosIP"

	belongs_to :edr , :foreign_key => "nCodElectronicaRed"
	has_many :linFijoDispositivoIPs , :foreign_key => "nCodDispositivosIP"
	has_many :lineas, through: :linFijoDispositivoIPs

	def self.dispositivo (nCodElectronicaRed, cPuerto)
		self.joins(:linFijoDispositivoIPs)		
		.joins(:lineas)
		.where("nCodElectronicaRed = #{nCodElectronicaRed} AND cPuerto = '#{cPuerto}' AND TLinFijosDispositivosIP.nTecla=1").first		
	end
	
end