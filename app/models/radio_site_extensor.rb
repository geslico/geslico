class RadioSiteExtensor < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioextencor"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"
	
end