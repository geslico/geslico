class TAcronimosSedeEdr < ActiveRecord::Base

	self.table_name ="geslico.dbo.TAcronimosSedeEDR"

	has_many :t_sedes, foreign_key: "nIdAcronimo"

end
