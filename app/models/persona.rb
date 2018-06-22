class Persona < ApplicationRecord
	
	self.table_name ="geslico.dbo.TPersonas"
    self.primary_key ="cDNI"
    
	has_many	:lin_moviles, :foreign_key => "cDNI", :primary_key => "cDNI"
    belongs_to  :unidad, :foreign_key => "ncoduni" , :primary_key=>"nCodUni"
    has_many    :lin_fijos_puestos, :foreign_key => "nCodPto" , :primary_key=>"nemppuesto"
    has_many    :lineas, :through => :lin_fijos_puestos

    validates :cDNI, presence: true
    
    def cApellidos
        "#{cape1} #{cape2}"        
    end

    accepts_nested_attributes_for :lin_moviles, :unidad

end
