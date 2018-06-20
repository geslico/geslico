class LinFijosPuesto < ApplicationRecord

    self.table_name ="geslico.dbo.TLinFijosPuestos"
    
        
    has_one :linea, :foreign_key => "nLineaFija", :primary_key => "nLinea"
    has_one :persona, :foreign_key => "nCodPto", :primary_key => "nemppuesto"    

end