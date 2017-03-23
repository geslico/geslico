require 'rails_helper'

describe TUsuario do

	before(:each) {@t_usuario = FactoryGirl.create(:t_usuario)}

	subject { @t_usuario }

	it "es valido con código usuario, nombre, correo y password" do
		expect(@t_usuario).to be
	end

	it "invalido usuario duplicado" do
	#expect(FactoryGirl.build(:t_usuario)).to_not be_valid
	end

	it "invalido  sin código usuario " do
		@t_usuario.cCodUsuario = nil
		expect(@t_usuario).to_not be_valid
	end

	it "invalido  código usuario de longitud menor a 6 " do
		@t_usuario.cCodUsuario = 'test1'
		expect(@t_usuario).to_not be_valid
	end

	it "invalido sin password " do
		@t_usuario.password = nil
		expect(@t_usuario).to_not be_valid
	end

	it "invalido password larga" do
		@t_usuario.password = '12345678901234567890123456789012345678901234567890'
		expect(@t_usuario).to_not be_valid
	end

	it "invalido password corta" do
		@t_usuario.password = 'corta'
		expect(@t_usuario).to_not be_valid
	end

	it "invalido  no coinciden password y confirmacion" do
		@t_usuario.password = '999999'
		@t_usuario.password_confirmation = '123456'
		expect(@t_usuario).to_not be_valid
	end

	it "invalido  sin correo electronico" do
		@t_usuario.cCorreo = nil
		expect(@t_usuario).to_not be_valid
	end
end
