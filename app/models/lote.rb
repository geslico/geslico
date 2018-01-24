class Lote < ApplicationRecord

    self.table_name ="geslico.dbo.TLotes"    
    
    has_many :lineas, :foreign_key => "nCodTipoLote"

end