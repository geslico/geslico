class RadioSiteAlarmaEntrada < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteradioEntralarm"
	
	belongs_to :radio_site, :foreign_key => "ncodsite"
	
	validates :ncod, presence: true, uniqueness: true
	validates :ncodsite, presence: true
	validates :Nentrada, :length => { :maximum => 10 }
	validates :csenal, :length => { :maximum => 50 }
	
end