class RadioSiteRectificador < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadiorectif"
	
	belongs_to :radio_site, :foreign_key => "NcodSite"
	
end