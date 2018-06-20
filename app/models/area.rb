class Area < ApplicationRecord

	self.table_name ="geslico.dbo.TUnidades"
	self.primary_key = "nCodUni" 

	has_many :unidades, :foreign_key => "nIdArea", :primary_key => "nCodUni"

end