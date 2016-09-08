class TUsuario < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TUsuarios"

	scope :cCodUsuario, -> (cCodUsuario) { where cCodUsuario: cCodUsuario }
	scope :cNombre, -> (cNombre) { where("cNombre like ?", "%#{cNombre}%")}
	scope :cClave, -> (cClave) { where cClave: cClave }
	scope :cCorreo, -> (cCorreo) { where("cCorreo like ?", "%#{cCorreo}%")}
	scope :bActivo, -> (bActivo) { where bActivo: bActivo }


	#relación con TUsuariosProgramas
	has_many	:TUsuariosPrograma, :foreign_key => "nIdUsuario"
	has_many	:TPrograma, through: :TUsuariosPrograma, :foreign_key => "nCodPrograma"

	before_save { self.cCodUsuario = cCodUsuario.downcase }
  	before_save { self.cCorreo = cCorreo.downcase }

	#Validaciones sobre el usuario
	validates :cCodUsuario, presence: true, length: { minimum: 6 }
	validates :cNombre, presence: true
  	validates :password, presence: true, length: { minimum: 6 }
  	validates :bActivo, presence: true

	has_secure_password #implementa la autenticación con bcrypt

end
