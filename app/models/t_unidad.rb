class TUnidad < ActiveRecord::Base

	self.table_name ="geslico.dbo.TUnidades"
	
	has_one :TArea, :foreign_key => "nIdArea"
	has_one :TUnidad, :foreign_key => "nCodUniPadre"

	has_many :TLinea, :foreign_key => "nCodUni"
	has_many :TSede, :foreign_key => "nCodUni"

	belongs_to :TUnidad, :foreign_key => "nIdArea", :primary_key => "nCodUni"
	belongs_to :TUnidad, :foreign_key => "nCodUniPadre", :primary_key => "nCodUni"
	
end