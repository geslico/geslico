class TipoLinMovil < ApplicationRecord

    self.table_name ="geslico.dbo.TTipoLinMoviles"
    self.primary_key="nCodTipMovil"
    
    has_many :lin_moviles, :foreign_key => "nCodTipMovil", :primary_key => "nCodTipMovil"
end