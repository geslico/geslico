class EstadosLinea < ApplicationRecord

    self.table_name ="geslico.dbo.TEstadosLinea"
    self.primary_key="nCodEstLin"
    
    has_many :lineas, :foreign_key => "nCodEstLin"
    
end