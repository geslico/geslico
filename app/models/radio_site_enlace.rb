class RadioSiteEnlace < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioEnlaces"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"
	belongs_to :radio_site_antena_modelo, :foreign_key => "nIdModeloAntena"
	belongs_to :radio_site_relacion_enlace, :foreign_key => "nId"
	
end