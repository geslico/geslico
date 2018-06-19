class RadioSiteTercero < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioTerceros"
	
	belongs_to :radio_site, :foreign_key => "Ncodsite"
	
end