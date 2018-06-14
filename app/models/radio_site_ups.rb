class RadioSiteUps < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioUps"
	
	belongs_to :radio_site , :foreign_key => "nCodSite"
end