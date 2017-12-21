class Unidad < ApplicationRecord
	include Tree
	
	self.table_name ="geslico.dbo.TUnidades"		

	has_one :t_area, :foreign_key => "nIdArea"
	has_one :unidad, :foreign_key => "nCodUniPadre"

	has_many :lineas, :foreign_key => "nCodUni"
	has_many :t_sedes, :foreign_key => "nCodUni"

	belongs_to :unidad, :foreign_key => "nIdArea", :primary_key => "nCodUni"
	belongs_to :unidad, :foreign_key => "nCodUniPadre", :primary_key => "nCodUni"
	

end