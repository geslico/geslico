class Catalogo < ApplicationRecord

	self.table_name ="geslico.dbo.TCatalogoRed"

	belongs_to :super_tipo_componente, :foreign_key => "nCodSuperTipo", :primary_key=> "nCodSuperTipo"

	scope :marca,     -> { select("cFabricante").distinct.order("cFabricante") }
	scope :modelo,     -> { select("cModelo").distinct.order("cModelo") }

end