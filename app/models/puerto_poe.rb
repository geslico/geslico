class PuertoPoe < ApplicationRecord

	self.table_name ="geslico.dbo.TPuertosPOE"

	belongs_to :edr , :foreign_key => "nCodElectronicaRed"

	def self.poe (nCodElectronicaRed, cPuerto)
		self.select(:bPoeStatus).where("nCodElectronicaRed = #{nCodElectronicaRed} AND cPuerto = '#{cPuerto}'").first
	end
	
end