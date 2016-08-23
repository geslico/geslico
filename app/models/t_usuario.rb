class TUsuario < ActiveRecord::Base
	self.table_name ="geslico.dbo.TUsuarios"
	scope :cCodUsuario, -> (cCodUsuario) { where cCodUsuario: cCodUsuario }
	scope :cNombre, -> (cNombre) { where("cNombre like ?", "%#{cNombre}%")}
	scope :cClave, -> (cClave) { where cClave: cCodUsuario }
end
