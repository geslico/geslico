class TDevicePool < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.AXL_DevicePool"

	scope :cDevicePool,     -> { where("cDevicePool is not null")}

	#relación con TSede
	has_many :TSede, :foreign_key => "cDevicePool"

end
