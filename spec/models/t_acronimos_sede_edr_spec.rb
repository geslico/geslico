require 'rails_helper'

describe TAcronimosSedeEdr do

	before(:each) {@t_acronimo = FactoryGirl.create(:t_acronimos_sede_edr)}

	subject { @t_acronimo }

	it "Es valido con un codigo y una descripción de acrónimo" do
		expect(@t_acronimo).to be_valid
	end

	it "Es inválido sin codigo de acrónimo" do
		@t_acronimo.cCodigo = nil
		expect(@t_acronimo).to_not be_valid
	end

	it "Es inválido sin descripción de acrónimo" do
		@t_acronimo.cDescripcion = nil
		expect(@t_acronimo).to_not be_valid
	end

	it "Es inválido con el código de mas de 9 carácteres" do
		@t_acronimo.cCodigo = "A123456789"
		expect(@t_acronimo).to_not be_valid
	end

	it "Es inválido con la descripción de más de 150 carácteres" do
		@t_acronimo.cDescripcion = (0...200).map{'Z'}.join
		expect(@t_acronimo).to_not be_valid
	end	
	
	it "Es inválido meter valores duplicados de acrónimos" do		
		@t_acronimo = FactoryGirl.build(:t_acronimos_sede_edr)
		expect(@t_acronimo).to_not be_valid
	end

end