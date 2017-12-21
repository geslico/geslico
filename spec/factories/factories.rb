FactoryGirl.define do

	factory :usuario do
		cCodUsuario "user099"
    	cClave nil
		cNombre "Usuario RSpec"
		cCorreo "usuariorspec@madrid.es"
		bActivo true
		password "123456"
		password_confirmation "123456"
	end

	factory :acronimos_sede_edr do
    	cCodigo "A_EJEM"
    	cDescripcion "EJEMPLO DE DESCRIPCION"
  	end

end