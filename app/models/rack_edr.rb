include CommonHelper

class RackEdr < ApplicationRecord

	self.table_name ="geslico.dbo.TRack"

	belongs_to :sede, :foreign_key => "nCodSede", :primary_key=> "nCodSede"
	belongs_to :sedeA, :foreign_key => "nCodSede", :primary_key=> "nCodSede"
	belongs_to :sedeB, :foreign_key => "nCodSede", :primary_key=> "nCodSede"
	has_many :edrs, :foreign_key => "nCodRack" 

	def sede_folder
		sede_folder_url(self.nCodSede)
	end

	def sede_edr_photos
		sede_edr_photos_url(self.nCodSede)
	end
	
	def sede_edr_map
		sede_edr_map_url(self.nCodSede)
	end

end

