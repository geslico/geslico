class TArea < ActiveRecord::Base

	self.table_name ="geslico.dbo.TUnidades"

	has_many :TUnidad, :foreign_key => "nIdArea", :primary_key => "nCodUni"

end