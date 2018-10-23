class Linea < ApplicationRecord

	self.table_name ="geslico.dbo.TLineas"
	self.primary_key="nLinea"
	
	NULL_ATTRS = %w( cNumero cNumCorto )
	before_save :nil_if_blank, on: [ :create, :update ]

	belongs_to :estados_linea, :foreign_key => "nCodEstLin"
	belongs_to :unidad, :foreign_key => "nCodUni", :primary_key=> "nCodUni"
	belongs_to :lote, :foreign_key => "nCodTipoLote", :primary_key => "nCodTipoLote"

	has_one :lin_movil, :foreign_key => "nLinea"
	has_many :lin_fijos_puestos, :foreign_key => "nLineaFija", :primary_key=> "nLinea"
	has_one :lin_dato, :foreign_key => "nLinea"
	
	has_many :consumo_movil, :foreign_key => "nLinea", :primary_key => "nLinea"

	accepts_nested_attributes_for :lin_movil

	validates :cNumero, :uniqueness => true, :numericality => true, :length => { :minimum => 9, :maximum => 15 }, unless: :cNumCorto?
	validates :cNumCorto, :uniqueness => true, :numericality => true, :length => { :minimum => 3, :maximum => 8 }, unless: :cNumero?
	validates :nCodUni, presence: true	
	validates :dFechaAlta, presence: true	
	validates :nCodEstLin, presence: true	
	validates :bListadoVIP,  inclusion: { in: [ 'true', 'false', true, false, 0, 1, '1', '0'  ] }

	protected

	def self.get_new_linea(semilla)
		result = ActiveRecord::Base.connection.select_all("select dbo.fnIdLinea('#{semilla}') as id").to_hash[0]["id"]
		return result
	end 

	def nil_if_blank
		NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
	end
end