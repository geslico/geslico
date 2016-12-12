class TUsuario < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TUsuarios"

	has_many	:t_usuarios_programas, :foreign_key => "nIdUsuario"
	has_many	:t_programas, through: :t_usuarios_programas, :foreign_key => "nCodPrograma"

	accepts_nested_attributes_for :t_usuarios_programas, :t_programas

	before_save { self.cCodUsuario = cCodUsuario.downcase }
  before_save { self.cCorreo = cCorreo.downcase }

	#Validaciones sobre el usuario
	validates :cCodUsuario, presence: true, length: { minimum: 6 }
	validates :cNombre, presence: true
	validates :password, :presence =>true, :confirmation => true, :length => { :within => 6..40 }, :on => :create
	validates :password, :confirmation => true, :length => { :within => 6..40 }, :on => :update, :unless => lambda{ |user| user.password.blank? }
	validates :bActivo, presence: true

	has_secure_password #implementa la autenticación con bcrypt

	private 
	def has_role?(role_sym)
	  TPrograma.any? { |r| r.nCodPrograma.underscore.to_sym == role_sym }
	end

end
