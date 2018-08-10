class RadioSiteAntenaModelo < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteModelosAntenas"
	
	validates :nId, presence: true, uniqueness: true
	validates :cModelo, presence: true, :length => {:maximum => 50 }
	validates :nDiametro, presence: true
	validates :nGanancia, presence: true
	
end