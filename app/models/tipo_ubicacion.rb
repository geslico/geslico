class TipoUbicacion < ApplicationRecord

	self.table_name ="geslico.dbo.TTTiposUbicacion"
		
	belongs_to :super_tipo_componente, :foreign_key => "nCodSuperTipo", :primary_key=> "nCodSuperTipo"

	validates :id, presence: true, uniqueness: true
	validates :cDescripcion, presence: true, :length => { :maximum => 50 }
	validates :cTipo, :length => { :maximum => 5 }
	
	scope :inventario,   -> { where("cTipo = 'RED'").distinct.order("cDescripcion") }

end