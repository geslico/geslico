class TSede < ActiveRecord::Base

	self.table_name ="geslico.dbo.TSedes"
	
	scope :nCodSede, -> (nCodSede) { where nCodSede: nCodSede }
	scope :cNombre, -> (cNombre) { where("cNombre like ?", "%#{cNombre}%")}

end
