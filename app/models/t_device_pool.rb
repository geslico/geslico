class TDevicePool < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.AXL_DevicePool"

	scope :cDevicePool,     -> { where("cDevicePool is not null")}
	
	has_many :t_sedes, :foreign_key => "cDevicePool"

end
