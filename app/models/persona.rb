class Persona < ApplicationRecord
	
	self.table_name ="geslico.dbo.TPersonas"
	self.primary_key="nempnumper"

	has_many	:lin_moviles, :foreign_key => "cDNI", :primary_key => "cDNI"
    belongs_to  :unidad, :foreign_key => "ncoduni" 

    validates :cDNI, presence: true, uniqueness: true

    def cApellidos
        "#{cape1} #{cape2}"        
    end

end
