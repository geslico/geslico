class TUnidad < ActiveRecord::Base

	self.table_name ="geslico.dbo.TUnidades"
	
	has_many :TUnidad, :foreign_key => "nCodUni"
	
end