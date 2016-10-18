class TLinea < ActiveRecord::Base

	self.table_name ="geslico.dbo.TLineas"

	belongs_to :TUnidad, :foreign_key => "nCodUni",
end