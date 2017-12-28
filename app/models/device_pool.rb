class DevicePool < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.AXL_DevicePool"

	scope :cDevicePool,     -> { where("cDevicePool is not null")}
	
	has_many :sedes, :foreign_key => "cDevicePool"

end
