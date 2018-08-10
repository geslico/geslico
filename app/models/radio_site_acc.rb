class RadioSiteAcc < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioACC"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"

	validates :nCod, presence: true, uniqueness: true
	validates :nCodSite, presence: true
	validates :cMarca, presence: true, :length => { :maximum => 50 }
	validates :cModelo, :length => { :maximum => 50 }
	validates :cTipo, :length => { :maximum => 50 }
	validates :cControl, :length => { :maximum => 50 }
	validates :cFreecooling, :length => { :maximum => 50 }
	validates :cTipoGas, :length => { :maximum => 50 }
	validates :cPeriodoRevision, :length => { :maximum => 50 }
	
end