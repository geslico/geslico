class TLinea < ApplicationRecord

	self.table_name ="geslico.dbo.TLineas"

	belongs_to :t_unidades, :foreign_key => "nCodUni"
end