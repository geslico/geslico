require 'rails_helper'

describe Usuario do

	before(:each) {@usuario = FactoryGirl.create(:usuario)}

	subject { @usuario }

	it "es valido con código usuario, nombre, correo y password" do
		expect(@usuario).to be
	end

	it "invalido usuario duplicado" do		
		@usuario_repetido=FactoryGirl.build(:usuario)
		expect(@usuario_repetido).to_not be_valid
	end

	it "invalido  sin código usuario " do
		@usuario.cCodUsuario = nil
		expect(@usuario).to_not be_valid
	end

	it "invalido  código usuario de longitud menor a 6 " do
		@usuario.cCodUsuario = 'test1'
		expect(@usuario).to_not be_valid
	end

	it "invalido sin password " do
		@usuario.password = nil
		expect(@usuario).to_not be_valid
	end

	it "invalido password larga" do
		@usuario.password =  (0...20).map{'PASS'}.join
		expect(@usuario).to_not be_valid
	end

	it "invalido password corta" do
		@usuario.password = 'corta'
		expect(@usuario).to_not be_valid
	end

	it "invalido  no coinciden password y confirmacion" do
		@usuario.password = '999999'
		@usuario.password_confirmation = '123456'
		expect(@usuario).to_not be_valid
	end

	it "invalido  sin correo electronico" do
		@usuario.cCorreo = nil
		expect(@usuario).to_not be_valid
	end
end
