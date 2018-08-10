class RadioSiteEquipamiento < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadioOtroseq"
	
	belongs_to :radio_site, :foreign_key => "Ncodsite"

	validates :ncod, presence: true, uniqueness: true
	validates :NcodSite, presence: true
	validates :CusuarioEq, :length => { :maximum => 50 }	
	validates :CtipoEq, :length => { :maximum => 50 }	
	validates :CocupEq, :length => { :maximum => 50 }	
	validates :CAntenasEq, :length => { :maximum => 50 }	
	validates :CAlimenEq, :length => { :maximum => 50 }	
	validates :CPersonaEq, :length => { :maximum => 50 }	
	validates :CtfncontacEq, :length => { :maximum => 50 }	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :Cemaileq, :length => { :maximum => 30 }, format: { :with => VALID_EMAIL_REGEX }	
	
end