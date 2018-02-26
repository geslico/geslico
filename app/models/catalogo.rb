class Catalogo < ApplicationRecord

	self.table_name ="geslico.dbo.TCatalogoRed"

	belongs_to :super_tipo_componente, :foreign_key => "nCodSuperTipo", :primary_key=> "nCodSuperTipo"

end