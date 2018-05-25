class RadioSiteAlarmaSalida < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioSalAlarm"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"
	
end