class TArea < ApplicationRecordApplicationRecord

	self.table_name ="geslico.dbo.TUnidades"

	has_many :t_unidades, :foreign_key => "nIdArea", :primary_key => "nCodUni"

end