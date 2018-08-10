class RadioSiteAlarmaSalida < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioSalAlarm"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"

	validates :ncod, presence: true, uniqueness: true
	validates :ncodsite, presence: true
	validates :Nentrada, :length => { :maximum => 10 }
	validates :csenal, :length => { :maximum => 50 }	
	
end