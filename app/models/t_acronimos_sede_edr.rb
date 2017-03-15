class TAcronimosSedeEdr < ActiveRecord::Base
	self.table_name ="geslico.dbo.TAcronimosSedeEDR"	
	self.primary_key = "nId"

	ransack_alias :buscon, :cCodigo_or_cDescripcion

	#Validaciones sobre el acrónimo
	validates :cCodigo, presence: true, length: { maximum: 9 }
	validates :cDescripcion, presence: true, length: { maximum: 150 }
	
end
