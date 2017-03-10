FactoryGirl.define do

	factory :t_usuario do
		cCodUsuario "user099"
    	cClave nil
		cNombre "Usuario RSpec"
		cCorreo "usuariorspec@madrid.es"
		bActivo true
		password "123456"
		password_confirmation "123456"
	end

end