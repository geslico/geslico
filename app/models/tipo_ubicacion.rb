class TipoUbicacion < ApplicationRecord

	self.table_name ="geslico.dbo.TTTiposUbicacion"

	belongs_to :super_tipo_componente, :foreign_key => "nCodSuperTipo", :primary_key=> "nCodSuperTipo"

	scope :almacen,   -> { where("cTipo = 'RED'").distinct.order("cDescripcion") }

end