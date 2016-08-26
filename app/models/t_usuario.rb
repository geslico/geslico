class TUsuario < ActiveRecord::Base

	#Consulta
	self.table_name ="geslico.dbo.TUsuarios"
	scope :cCodUsuario, -> (cCodUsuario) { where cCodUsuario: cCodUsuario }
	scope :cNombre, -> (cNombre) { where("cNombre like ?", "%#{cNombre}%")}
	scope :cClave, -> (cClave) { where cClave: cClave }
	scope :cCorreo, -> (cCorreo) { where("cCorreo like ?", "%#{cCorreo}%")}
	scope :bActivo, -> (bActivo) { where bActivo: bActivo }

  	before_save { self.cCorreo = cCorreo.downcase }

	#Validaciones sobre el usuario
	validates :cCodUsuario, presence: true
  	validates :password, presence: true, length: { minimum: 6 }

	has_secure_password #implementa la autenticación con bcrypt

end
