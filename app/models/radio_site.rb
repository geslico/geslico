class RadioSite < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteRadio"

	attr_accessor :nNumPorteadoras
	
	belongs_to :tipo_site, :foreign_key => "nCodTipo"
	belongs_to :sede, :foreign_key => "nCodSede", :primary_key=> "nCodSede"	
	has_many :edificios, :foreign_key => "nCodEdificio"
	has_many :radio_site_upses, :foreign_key => "nCodSite"
	has_many :radio_site_rectificadores, :foreign_key => "NcodSite"
	has_many :radio_site_accs, :foreign_key => "nCodSite"
	has_many :radio_site_alarma_entradas, -> { order "Nentrada" }, :foreign_key => "nCodSite"
	has_many :radio_site_alarma_salidas, :foreign_key => "nCodSite"
	has_many :radio_site_enlaces, :foreign_key => "nCodSite"
	has_many :radio_site_estaciones_base, :foreign_key => "nCodSite"
	has_many :radio_site_extensores, :foreign_key => "ncodsite"
	has_many :radio_site_terceros, :foreign_key => "Ncodsite"
	has_many :radio_site_equipamientos, :foreign_key => "Ncodsite"

	validates :nCodSite, presence: true, uniqueness: true
	validates :nCodSede, presence: true
	validates :nCodTipo, presence: true
	validates :cNombreSite, presence: true, :length => { :minimum => 5, :maximum => 100 }
	validates :cDirSite, :length => { :minimum => 5, :maximum => 100 }
	validates :cPropietarioSite, :length => { :maximum => 150 }
	validates :cTramiacreditaSite, presence: true, :length => { :maximum => 150 }
	validates :bAcreditacionSite, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cContactoSite, :length => { :maximum => 50 }
	validates :nLineaTfno, :length => { :maximum => 50 }
	validates :cTfnoconSite, :length => { :minimum => 5, :maximum => 50 }
	validates :cHorarioSite, :length => { :maximum => 50 }
	validates :bLlavesSite, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cUbiLlavesSite, :length => { :maximum => 100 }
	validates :cCoordenadaSiteO, :length => { :maximum => 50 }
	validates :cCoordenadaSiteN, :length => { :maximum => 50 }
	validates :cUbicaTorre, :length => { :maximum => 250 }
	validates :cUbicaSite, :length => { :maximum => 250 }
	validates :bClimatizaSite, inclusion: { in: [ true, false, 1, 0 ] }
	validates :bContBaliza, inclusion: { in: [ true, false, 1, 0 ] }
	validates :bTorreLinvida, inclusion: { in: [ true, false, 1, 0 ] }
	validates :bParaRayos, inclusion: { in: [ true, false, 1, 0 ] }
	validates :bTomaTierraPrayos, inclusion: { in: [ true, false, 1, 0 ] }
	validates :bTomaTierraEq, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cDimensiones, :length => { :maximum => 50 }
	validates :ctipoTorre, :length => { :maximum => 100 }
	validates :cTipoBaliza, :length => { :maximum => 50 }
	validates :cCompEltrec, :length => { :maximum => 50 }
	validates :bMunielec, inclusion: { in: [ true, false, 1, 0 ] }
	validates :nNuncontElec, :length => { :maximum => 50 }
	validates :nNumTfnoave, :length => { :maximum => 50 }
	validates :cCupsElec, :length => { :maximum => 50 }
	validates :cTipoElec, :length => { :maximum => 50 }
	validates :cPotenElec, :length => { :maximum => 50 }
	validates :cUbicaContador, :length => { :maximum => 100 }
	validates :cUbicaInterrup, :length => { :maximum => 100 }
	validates :cLlavescontador, :length => { :maximum => 100 }
	validates :cVcaEntrada, :length => { :maximum => 20 }
	validates :bReconecatoras, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cReconecatoras, :length => { :maximum => 50 }
	validates :bTomaGelectro, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cTomaGelectro, :length => { :maximum => 50 }
	validates :cNomCentralAlarm, :length => { :maximum => 100 }
	validates :cTipocentralAlarm, :length => { :maximum => 50 }
	validates :cAlimenAlarm, :length => { :maximum => 50 }
	validates :nLineaAsocAlarm, :length => { :maximum => 50 }
	validates :bBateriasAlarm, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cNomRadioM, :length => { :maximum => 100 }
	validates :cFabricRadioM, :length => { :maximum => 50 }
	validates :bDiveridadRx, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cTipoAntenRx, :length => { :maximum => 200 }
	validates :cTipoAntenTx, :length => { :maximum => 200 }
	validates :cNumEbt, :length => { :maximum => 50 }
	validates :cSwmi, :length => { :maximum => 50 }
	validates :cTipoEnlace, :length => { :maximum => 50 }
	validates :cTipoEquRedMovil, :length => { :maximum => 50 }
	validates :bExtenAsoc, inclusion: { in: [ true, false, 1, 0 ] }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :ceMailContactoSite, :length => { :maximum => 50 }, format: { :with => VALID_EMAIL_REGEX }
	validates :cUsuarioAlta, presence: true, :length => { :maximum => 25 }
	validates :dFchAlta, presence: true
	validates :cUsuarioModificacion, :length => { :maximum => 25 }

	def cCoordenadaSiteN
		return self[:cCoordenadaSiteN].gsub("*", "  ")
	end

	def cCoordenadaSiteO
		return self[:cCoordenadaSiteO].gsub("*", "  ")
	end
	
end