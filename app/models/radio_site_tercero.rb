class RadioSiteTercero < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioTerceros"
	
	belongs_to :radio_site, :foreign_key => "Ncodsite"
	
	validates :ncod, presence: true, uniqueness: true
	validates :Ncodsite, presence: true
	validates :CompaTerceros, :length => { :maximum => 50 }	
	validates :CtipoTerceros, :length => { :maximum => 50 }	
	validates :CocupacionTerceros, :length => { :maximum => 50 }	
	validates :CantenasTerceros, :length => { :maximum => 50 }	
	validates :CAlimentaTerceros, :length => { :maximum => 50 }	
	validates :NLineaTerceros, :length => { :maximum => 50 }	
	validates :CdedicaTerceros, :length => { :maximum => 50 }	
	validates :CTfnoconTerceros, :length => { :maximum => 30 }	
	validates :Cresponsableterceros, :length => { :maximum => 50 }	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :cemailterceros, :length => { :maximum => 30 }, format: { :with => VALID_EMAIL_REGEX }	

end