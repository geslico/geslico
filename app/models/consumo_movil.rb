class ConsumoMovil < ApplicationRecord
    
    self.table_name ="geslico.dbo.ConsumoMovil"

    belongs_to :linea, :foreign_key => "nLinea", :primary_key=> "nLinea"
    belongs_to :lin_movil, :foreign_key => "nLinea", :primary_key=> "nLinea"

end
