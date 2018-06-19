class RadioSiteEstacionBase < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteEstacionesBase"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"
	belongs_to :radio_site_canal, :foreign_key => "nCodCanal"
	
	def self.frecuencias_compartidas(cod_site)
		joins(:radio_site).
		select("TSiteEstacionesBase.nCodSite, TSiteRadio.cNombreSite, nCodCanal, nBR")
		.where("TSiteEstacionesBase.nCodSite != ? AND nCodCanal IN 
			(SELECT nCodCanal FROM TSiteEstacionesBase WHERE TSiteEstacionesBase.nCodSite = ?)", cod_site, cod_site)
	end
	
end