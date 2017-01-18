require 'rails_helper'

RSpec.describe TUsuario, type: :model do

	it "es valido con código usuario, nombre, correo y password" do		
		#expect(@t_usuario).to be_valid
	end 

	it "invalido  usuario duplicado" do
		#expect(@t_usuario).to_not be_valid
	end

	it "invalido  sin código usuario " do
		expect(TUsuario.new(cCodUsuario: nil)).to_not be_valid
	end

	# it "invalido  código usuario repetido "
	 it "invalido  código usuario de longitud menor a 6 " do
		expect(TUsuario.new(cCodUsuario: 'aaa')).to_not be_valid
	end

	 it "invalido  sin nombre " do
		expect(TUsuario.new(cNombre: nil)).to_not be_valid
	end

	it "invalido  con nombre de usuario de longitud menor a 4 " do
		expect(TUsuario.new(cNombre: 'Pa')).to_not be_valid
	end

	# it "invalido  sin correo electronico"
	# it "invalido  correo electronico sin formato de correo"
	it "invalido  sin password ni confirmacion" do
		expect(TUsuario.new(password: nil, password_confirmation: nil)).to_not be_valid
	end

	it "invalido  con password sin confirmacion" do
		expect(TUsuario.new(password: '123456', password_confirmation: nil)).to_not be_valid
	end

	it "invalido  sin password con confirmacion" do
		expect(TUsuario.new(password: nil, password_confirmation: '789101')).to_not be_valid
	end

	it "invalido  no coinciden password y confirmacion" do
		@t_usuario=TUsuario.new(
			cCodUsuario: 'user001',
			cNombre: 'Usuario RSpec', 
			cCorreo: 'usuariorspec@madrid.es',
			bActivo: true,
			password: '123456',
			password_confirmation: '999999'
			)
		expect(@t_usuario).to_not be_valid
	end

	it "invalido password corta" do
		expect(TUsuario.new(password: '1234')).to_not be_valid
	end

	it "invalido password larga" do
		expect(TUsuario.new(password: '12345678901234567890123456789012345678901234567890')).to_not be_valid
	end
end
