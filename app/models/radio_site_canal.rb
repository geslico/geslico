class RadioSiteCanal < ApplicationRecord

	self.table_name ="geslico.dbo.TSiteCanales"
	
	validates :nCodCanal, presence: true, uniqueness: true
	validates :nTx, presence: true
	validates :nRx, presence: true
	validates :nCanalMOT, presence: true

end