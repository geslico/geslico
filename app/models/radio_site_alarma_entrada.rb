class RadioSiteAlarmaEntrada < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteradioEntralarm"
	
	belongs_to :radio_site, :foreign_key => "ncodsite"
	
end