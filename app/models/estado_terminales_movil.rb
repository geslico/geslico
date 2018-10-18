class EstadoTerminalesMovil < ApplicationRecord

    self.table_name ="geslico.dbo.TEstadoTerminalesMovil"
    self.primary_key="nCodEstado"
    
    has_many :terminales_movil, :foreign_key => "nCodEstado"

end