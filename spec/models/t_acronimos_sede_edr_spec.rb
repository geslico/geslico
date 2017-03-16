require 'rails_helper'

describe TAcronimosSedeEdr do

	before(:each) {@t_acronimos = FactoryGirl.create(:t_acronimos_sede_edr)}

	subject { @t_acronimos }

	it "Es valido con un codigo y una descripción de acrónimo" do
		acronimo = TAcronimosSedeEdr.new(
				cCodigo: 'acroni',
				cDescripcion: 'esto es un ejemplo de descripcion de acrónimo'
			)
		expect(acronimo).to be_valid
	end

	it "Es inválido sin codigo de acrónimo" do
		@t_acronimos.cCodigo = nil
		expect(@t_acronimos).to_not be_valid
	end

	it "Es inválido sin descripción de acrónimo" do
		@t_acronimos.cDescripcion = nil
		expect(@t_acronimos).to_not be_valid
	end

	it "Es inválido con el código de mas de 9 carácteres" do
		@t_acronimos.cCodigo = 'aaaaaaaaaa'
		expect(@t_acronimos).to_not be_valid
	end

	it "Es inválido con la descripción de más de 150 carácteres" do
		@t_acronimos.cDescripcion = '0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789'
		expect(@t_acronimos).to_not be_valid
	end	
	
	#it "Es inválido meter valores duplicados de acrónimos" do
	#	@t_acronimos.cCodigo = "A_ECPLM"
	#	expect(@t_acronimos).to_not be_valid
	#end
end