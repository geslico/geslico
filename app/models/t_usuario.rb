class TUsuario < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TUsuarios"
	self.primary_key = "nIdUsuario"
	
	has_many	:t_usuarios_programas, :foreign_key => "nIdUsuario"
	has_many	:t_programas, through: :t_usuarios_programas, :foreign_key => "nCodPrograma"

	accepts_nested_attributes_for :t_usuarios_programas, :t_programas

	before_save { self.cCodUsuario = cCodUsuario.downcase }
	before_save { self.cCorreo = cCorreo.downcase }

	validates :cCodUsuario, presence: true, length: { minimum: 6 }, uniqueness: true
	validates :cNombre, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :cCorreo, presence: true, format: { :with => VALID_EMAIL_REGEX }
	validates :password, :presence =>true, :confirmation => true, :length => { :within => 6..40 }, :on => :create
	validates :password, :confirmation => true, :length => { :within => 6..40 }, :on => :update, :unless => lambda{ |user| user.password.blank? }
	
	ransack_alias :t_usuario, :cCodUsuario_or_cNombre_or_cCorreo
	
	has_secure_password #implementa la autenticación con bcrypt

	private 
	def has_role?(role_sym)
	  TPrograma.any? { |r| r.nCodPrograma.underscore.to_sym == role_sym }
	end

end
