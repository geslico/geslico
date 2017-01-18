FactoryGirl.define do

	factory :t_usuario do        
		CodUsuario "user099"
		cNombre "Usuario RSpec"
		cCorreo "usuariorspec@madrid.es"
		bActivo true
		password "123456"
		password_confirmation "123456"
	end 

end