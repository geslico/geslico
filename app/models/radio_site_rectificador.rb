class RadioSiteRectificador < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadiorectif"
	
	belongs_to :radio_site, :foreign_key => "NcodSite"

	validates :ncod, presence: true, uniqueness: true
	validates :NcodSite, presence: true
	validates :Cmarcarect, :length => { :maximum => 50 }
	validates :Cmodelorect, :length => { :maximum => 50 }
	validates :Capacidadrect, :length => { :maximum => 50 }
	validates :Cmodulosrec, :length => { :maximum => 50 }
	validates :Cmodulosahrect, :length => { :maximum => 50 }
	validates :Controlrect, :length => { :maximum => 50 }
	validates :Cvcaentrec, :length => { :maximum => 50 }
	validates :Cvcsalrect, :length => { :maximum => 50 }
	validates :Cbatrect, :length => { :maximum => 50 }
	
end