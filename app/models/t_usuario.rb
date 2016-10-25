class TUsuario < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TUsuarios"

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

	private 
	def has_role?(role_sym)
	  TPrograma.any? { |r| r.nCodPrograma.underscore.to_sym == role_sym }
	end

end
