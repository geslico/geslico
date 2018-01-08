class LinMovil < ApplicationRecord

    self.table_name ="geslico.dbo.TLinMoviles"
    self.primary_key="nLinea"
    
    belongs_to :lineas, :foreign_key => "nLinea"
    has_one :linea, :foreign_key => "nLinea"
    has_one :persona, :foreign_key => "cDNI", :primary_key => "cDNI"

    ransack_alias :lin_movil, :cNumero_or_cNumCorto_or_cObserva_or_cPerfil_or_cPerfilAutorizado_or_cCoberturaNormativa_or_cDNI_or_persona_cnombre_or_persona_cape1_or_persona_cape2_or_linea_unidad_cDenominacion_or_tipo_lin_movil_cDescTipoMovil

end