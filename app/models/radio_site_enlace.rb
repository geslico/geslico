class RadioSiteEnlace < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioEnlaces"
	
	belongs_to :radio_site, :foreign_key => "nCodSite"
	belongs_to :radio_site_antena_modelo, :foreign_key => "nIdModeloAntena"
	belongs_to :radio_site_relacion_enlace, :foreign_key => "nId"
	
	validates :nId, presence: true, uniqueness: true
	validates :nCodSite, presence: true
	validates :cSite, presence: true, :length => {:maximum => 20 }
	validates :cPuertoMPR, presence: true, :length => {:maximum => 5 }
	validates :cMarcaIDUODU, :length => {:maximum => 25 }
	validates :cModeloIDUODU, :length => {:maximum => 50 }
	validates :cAnillo, presence: true, :length => {:minium => 1, :maximum => 1 }
	validates :cAntenaSN, :length => {:maximum => 20 }
	validates :bNivelATPC, presence: true, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cPolaridad, :length => {:maximum => 10 }
	validates :dFchAlta, presence: true
	validates :dUsuarioAlta, presence: true, :length => {:maximum => 20 }
	validates :dUsuarioModificacion, :length => {:maximum => 20 }

end