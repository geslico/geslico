class RadioSiteAcc < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioACC"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"
	
end