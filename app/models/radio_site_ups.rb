class RadioSiteUps < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioUps"
	
	belongs_to :radio_site , :foreign_key => "nCodSite"

	validates :nCod, presence: true, uniqueness: true
	validates :nCodSite, presence: true
	validates :cMarcUPS, :length => { :maximum => 30 }
	validates :cModeloUPS, :length => { :maximum => 30 }
	validates :cCapacidadUPS, :length => { :maximum => 30 }
	validates :cVcaEntUPS, :length => { :maximum => 30 }
	validates :cVcaSalUps, :length => { :maximum => 30 }
	validates :cBateriasUPS, :length => { :maximum => 20 }

end