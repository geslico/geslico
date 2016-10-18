class TAcronimosSedeEdr < ActiveRecord::Base

	self.table_name ="geslico.dbo.TAcronimosSedeEDR"

	has_many :TSede, foreign_key: "nIdAcronimo"

end
