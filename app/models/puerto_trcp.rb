class PuertoTRCP < ApplicationRecord

	self.table_name ="geslico.dbo.TPuertosTRCP"

	belongs_to :edr , :foreign_key => "nCodElectronicaRed"

	def self.trcp (nCodElectronicaRed, cPuerto)
		self.select(:cTipo, :cDescripcion, :cNumeroSerie, :cModeloTarjeta, :cNumeroSerieTarjeta).where("nCodElectronicaRed = #{nCodElectronicaRed} AND cPuerto = '#{cPuerto}'").first
	end

end