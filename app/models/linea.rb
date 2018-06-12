class Linea < ApplicationRecord

	self.table_name ="geslico.dbo.TLineas"
	self.primary_key="nLinea"

	belongs_to :unidades, :foreign_key => "nCodUni"
	has_one :lin_movil, :foreign_key => "nLinea"
	belongs_to :estados_linea, :foreign_key => "nCodEstLin"
	belongs_to :unidad, :foreign_key => "nCodUni", :primary_key=> "nCodUni"
	has_many :lin_fijos_puestos, :foreign_key => "nLineaFija", :primary_key=> "nLinea"

	accepts_nested_attributes_for :lin_movil

end