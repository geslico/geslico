class Sede < ApplicationRecord

	self.table_name ="geslico.dbo.TSedes"

	belongs_to :unidad, :foreign_key => "nCodUni", :primary_key=> "nCodUni"
	belongs_to :estados_sede, :foreign_key => "nCodEstado"
	belongs_to :acronimos_sede_edr, :foreign_key => "nIdAcronimo"
	belongs_to :edificio, :foreign_key => "nCodEdificio"
	belongs_to :distrito, :foreign_key => "nDistrito", :primary_key=> "nDistrito"
	belongs_to :device_pool, :foreign_key => "cDevicePool"

	belongs_to :zona, :foreign_key => "nZona"
	has_many   :sicam_persona_grupos, through: :zona, :foreign_key => "SUPPORT_GROUP_NAME"
		
	validates :nCodSede, presence: true, uniqueness: true
	validates :nCodEstado, presence: true

	ransack_alias :sede, :cNombre_or_cDireccion_or_cDevicePool_or_unidad_cDenominacion

	def self.external_column_names_to_csv 
		return ['CodSede; Sede; Dirección; Cod. Unidad']
	end 
	
	def self.column_names_to_csv
		return %w{nCodSede cNombre cDireccion nCodUni}
	end	
	
end

class SedeA < Sede
	has_many   :lin_dato, :foreign_key => "nCodSedeA", :primary_key=> "nCodSede"
end

class SedeB < Sede
	has_many   :lin_dato, :foreign_key => "nCodSedeB", :primary_key=> "nCodSede"
end