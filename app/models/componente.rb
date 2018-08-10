class Componente < ApplicationRecord

	self.table_name ="geslico.dbo.TComponentesRed"

	# Es necesario añadir estas lineas cuando la tabla lleva un trigger asociado para que no de error el INSERT
	adapter = ActiveRecord::ConnectionAdapters::SQLServerAdapter	
	adapter.exclude_output_inserted_table_names['TComponentesRed'] = true
		
	has_one :catalogo, :foreign_key => "nCodTipoComponente", :primary_key=> "nCodTipoComponente" 
	belongs_to :sede, :foreign_key => "nCodSede", :primary_key=> "nCodSede" 
	belongs_to :edr, :foreign_key => "nCodElectronicaRed", :primary_key=> "nCodElectronicaRed" 	
	belongs_to :tipo_ubicacion, :foreign_key => "nCodUbicacion", :primary_key=> "id" 	

	accepts_nested_attributes_for :catalogo

	#validates :nCodComponente, presence: true, uniqueness: true
	#validates :nCodTipoComponente, presence: true
	validates :cPrefijoMAC, :length => { :maximum => 50 }
	validates :nTicket, :length => { :maximum => 50 }
	validates :cSerie, :length => { :maximum => 50 }
	validates :cBien, :length => { :maximum => 50 }
	validates :cExpediente, :length => { :maximum => 50 }
	validates :cBienPrincipal, :length => { :maximum => 50 }
	validates :bUsado, inclusion: { in: [ true, false, 1, 0 ] }
	validates :cUsuarioAlta, presence: true, :length => { :maximum => 25 }
	validates :dFchAlta, presence: true
	validates :cUsuarioModificacion, :length => { :maximum => 25 }
		
	def self.external_column_names_to_csv 
		return ['Cod. Componente; Código Sede; Nombre Sede; Código EdR; Nombre EdR; IP EdR; Tipo; Marca; Modelo; Nº Bocas; Ubicación;' \
			'MAC; Nº Serie; Nº Expediente; Nº Bien; Nº Bien Pricipal; Usado; Fecha Entrada; Fecha Salida; Fecha Fin de Garantía;' \
			'Fecha Fin de Mantenimiento; Observaciones']
	end 
	
	def self.column_names_to_csv
		return %w{nCodComponente nCodSede nCodElectronicaRed nCodTipoComponente nCodUbicacion cPrefijoMAC cSerie cExpediente cBien cBienPrincipal 
			bUsado dFchEntrada dFchSalida dFchFinGarantia dFchFinMantenimiento cObservaciones}
	end

end