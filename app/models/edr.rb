class Edr < ApplicationRecord

	self.table_name ="geslico.dbo.TElectronicaRed"

	belongs_to :rack_edr , :foreign_key => "nCodRack"
	has_many :componentes, :foreign_key => "nCodElectronicaRed" 
	has_many :puertos, :foreign_key => "nCodElectronicaRed" 
	has_many :endpoints, -> { order "nRegleta" }, :foreign_key => "nCodElectronicaRed"

	scope :by_ip,   ->(ip) { where(cIPGestion: ip	) }
	scope :by_name, ->(name) { where("cNombre LIKE ?", "%#{name}%") }

end