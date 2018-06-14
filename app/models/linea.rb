class Linea < ApplicationRecord

	self.table_name ="geslico.dbo.TLineas"
	self.primary_key="nLinea"
	

	belongs_to :estados_linea, :foreign_key => "nCodEstLin"
	belongs_to :unidad, :foreign_key => "nCodUni", :primary_key=> "nCodUni"
	belongs_to :lote, :foreign_key => "nCodTipoLote", :primary_key => "nCodTipoLote"

	has_one :lin_movil, :foreign_key => "nLinea"
	has_many :lin_fijos_puestos, :foreign_key => "nLineaFija", :primary_key=> "nLinea"
	has_one :lin_dato, :foreign_key => "nLinea"
	
	accepts_nested_attributes_for :lin_movil

	validates :cNumero, :uniqueness => true, :numericality => true, :length => { :minimum => 9, :maximum => 15 }, :if => "!cNumero.blank?"
	validates :cNumCorto, :uniqueness => true, :numericality => true, :length => { :minimum => 3, :maximum => 5 }, :if => "!cNumCorto.blank?"
	validates :bListadoVIP, presence: true	
	validates :nCodUni, presence: true	
	validates :nCodEstLin, presence: true	
	

end