class LinMovil < ApplicationRecord

    self.table_name ="geslico.dbo.TLinMoviles"
    self.primary_key="nLinea"
    
    NULL_ATTRS = %w( cUsuarioIntranet cIPm2m cObserva cDNI )
    before_save :nil_if_blank, on: [ :create, :update ]
    
    belongs_to :lineas, :foreign_key => "nLinea", :primary_key => "nLinea"
    has_one :linea, :foreign_key => "nLinea", :primary_key => "nLinea"
    has_one :persona, :foreign_key => "cDNI", :primary_key => "cDNI"    
    has_one :perfiles_movil, :foreign_key => "cPerfil", :primary_key => "cPerfil"    

    ransack_alias :lin_movil, :linea_cNumero_or_linea_cNumCorto_or_cObserva_or_cPerfil_or_cPerfilAutorizado_or_cCoberturaNormativa_or_cDNI_or_persona_cnombre_or_persona_cape1_or_persona_cape2_or_linea_unidad_cDenominacion_or_tipo_lin_movil_cDescTipoMovil
    
    accepts_nested_attributes_for :linea
    
    IP_REGEX = /\A([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}(?:\-([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]))?\z/
    validates :cIPm2m, :format => { :with => IP_REGEX } , :if => "!cIPm2m.blank?"
    validates :bPrincipal, inclusion: { in: [ true, false, "true", "false", 1, 0 ] }
    validates :bHorarioExtendido, inclusion: { in: [ true, false ] }
    validate :dni_exists

    protected

	def nil_if_blank
		NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
    end 
    
    def dni_exists
        if !cDNI.blank?
            if Persona.where(cDNI: cDNI).count==0
                errors.add(:cDNI, " #{cDNI} no existe")
            end
        end
    end
end