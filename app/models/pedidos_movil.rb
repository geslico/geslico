class PedidosMovil < ApplicationRecord
    
    self.table_name ="geslico.dbo.TPedidosMoviles"

    belongs_to :modelos_terminales, :foreign_key => "nCodModelo", :primary_key => "nId"
   
end