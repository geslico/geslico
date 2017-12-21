class TArea < ApplicationRecord

	self.table_name ="geslico.dbo.Unidades"

	has_many :unidades, :foreign_key => "nIdArea", :primary_key => "nCodUni"

end