class RadioSiteRelacionEnlace < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteEnlaces"

	self.primary_key = :nIdRadioEnlaceA

	has_one :radio_site_enlace, :foreign_key => "nId", :primary_key => "nIdRadioEnlaceB"

end