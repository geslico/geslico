class LinFijoDispositivoIP < ApplicationRecord

	self.table_name ="geslico.dbo.TLinFijosDispositivosIP"
	self.primary_keys = :nLinea,:nCodDispositivosIP,:nTecla

	belongs_to :dispositivo_ip , :foreign_key => "nCodDispositivosIP"
	has_one :linea , :foreign_key => "nLinea"

end