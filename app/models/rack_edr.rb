include CommonHelper

class RackEdr < ApplicationRecord

	self.table_name ="geslico.dbo.TRack"

	belongs_to :sede, :foreign_key => "nCodSede", :primary_key=> "nCodSede"
	belongs_to :sedeA, :foreign_key => "nCodSede", :primary_key=> "nCodSede"
	belongs_to :sedeB, :foreign_key => "nCodSede", :primary_key=> "nCodSede"
	has_many :edrs, :foreign_key => "nCodRack" 

	def sede_edr_map
		sede_edr_map_url(self.nCodSede)
	end

end

