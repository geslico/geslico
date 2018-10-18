class TerminalMovil < ApplicationRecord

    self.table_name ="geslico.dbo.TTerminalesMovil"
    self.primary_key="nId"

    has_one :linea, :foreign_key => "nLinea", :primary_key => "nLinea"
    has_one :linea2, :foreign_key => "nLinea2", :primary_key => "nLinea"

    belongs_to :modelos_terminal, :foreign_key => "nCodModelo", :primary_key => "nId"
    belongs_to :estado_terminales_movil, :foreign_key => "nCodEstado", :primary_key => "nCodEstado"

end