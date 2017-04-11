class TAcronimosSedeEdr < ApplicationRecord

	self.table_name ="geslico.dbo.TAcronimosSedeEdr"	
	self.primary_key = "nId"

	ransack_alias :buscon, :cCodigo_or_cDescripcion
	
	before_save { self.cCodigo = cCodigo.upcase }

	validates :cCodigo, presence: true, length: { maximum: 9 }, uniqueness: {:case_sensitive => false}
	validates :cDescripcion, presence: true, length: { maximum: 150 }
	
end
