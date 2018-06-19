class RadioSiteEquipamiento < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioOtroseq"
	
	belongs_to :radio_site, :foreign_key => "Ncodsite"
	
end