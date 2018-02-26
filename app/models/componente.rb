class Componente < ApplicationRecord

	self.table_name ="geslico.dbo.TComponentesRed"

	belongs_to :catalogo, :foreign_key => "nCodTipoComponente", :primary_key=> "nCodTipoComponente" 

end