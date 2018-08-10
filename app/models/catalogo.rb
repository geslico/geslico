class Catalogo < ApplicationRecord

	self.table_name ="geslico.dbo.TCatalogoRed"

	belongs_to :super_tipo_componente, :foreign_key => "nCodSuperTipo", :primary_key=> "nCodSuperTipo"

	#validates :nCodTipoComponente, presence: true, uniqueness: true
	validates :cFabricante, presence: true, :length => { :maximum => 50 }
	validates :cModelo, presence: true, :length => { :maximum => 100 }
	validates :cDescripcion, :length => { :maximum => 250 }
	validates :cTipo, :length => { :maximum => 50 }
	validates :bGestionable, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cObservaciones, :length => { :maximum => 250 }
	validates :cUsuarioAlta, :length => { :maximum => 10 }
	validates :cUsuarioModificacion, :length => { :maximum => 10 }	
	
	scope :marca,       -> { select("cFabricante").distinct.order("cFabricante") }
	scope :modelo,      -> { select("cModelo").distinct.order("cModelo") }
	scope :catalogo,    ->(marca, modelo) { where('cFabricante = ? and cModelo = ?', marca, modelo) }

end