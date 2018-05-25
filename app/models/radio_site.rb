class RadioSite < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadio"

	belongs_to :tipo_site, :foreign_key => "nCodTipo"
	belongs_to :sede, :foreign_key => "nCodSede", :primary_key=> "nCodSede"	
	has_many :edificios, :foreign_key => "nCodEdificio"
	has_many :radio_site_upses, :foreign_key => "nCodSite"
	has_many :radio_site_rectificadores, :foreign_key => "NcodSite"
	has_many :radio_site_accs, :foreign_key => "nCodSite"
	has_many :radio_site_alarma_entradas, -> { order "Nentrada" }, :foreign_key => "nCodSite"
	has_many :radio_site_alarma_salidas, :foreign_key => "nCodSite"
	has_many :radio_site_enlaces, :foreign_key => "nCodSite"

	def cCoordenadaSiteN
		return self[:cCoordenadaSiteN].gsub("*", "  ")
	end

	def cCoordenadaSiteO
		return self[:cCoordenadaSiteO].gsub("*", "  ")
	end
	
end