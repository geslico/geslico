class TarjetaMovil < ApplicationRecord

    self.table_name ="geslico.dbo.TTarjetasMovil"
    self.primary_key="cICC"

    belongs_to :linea, :foreign_key => "nLineaMovil", :primary_key => "nLinea"

end