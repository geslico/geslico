class RackEdr < ApplicationRecord

	self.table_name ="geslico.dbo.TRack"

	belongs_to :sede, :foreign_key => "nCodSede", :primary_key=> "nCodSede"
	has_many :edrs, :foreign_key => "nCodRack" 

end

