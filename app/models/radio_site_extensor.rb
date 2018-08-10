class RadioSiteExtensor < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioextencor"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"

	validates :ncod, presence: true, uniqueness: true
	validates :ncodsite, presence: true
	validates :CubicaExtencor, :length => { :maximum => 50 }
	validates :CfabriExtencor, :length => { :maximum => 50 }
	validates :Ctipoextencor, :length => { :maximum => 50 }
	validates :Cebtextencor, :length => { :maximum => 50 }
	validates :Cradiacapextencor, :length => { :maximum => 50 }
	validates :Cradiantedonextencor, :length => { :maximum => 50 }
	validates :Calimenextencor, :length => { :maximum => 50 }
		
end