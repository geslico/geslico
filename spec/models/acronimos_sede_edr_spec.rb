require 'rails_helper'

describe AcronimosSedeEdr do

	before(:each) {@acronimo = FactoryGirl.create(:acronimos_sede_edr)}

	subject { @acronimo }

	it "Es valido con un codigo y una descripción de acrónimo" do
		expect(@acronimo).to be_valid
	end

	it "Es inválido sin codigo de acrónimo" do
		@acronimo.cCodigo = nil
		expect(@acronimo).to_not be_valid
	end

	it "Es inválido sin descripción de acrónimo" do
		@acronimo.cDescripcion = nil
		expect(@acronimo).to_not be_valid
	end

	it "Es inválido con el código de mas de 9 carácteres" do
		@acronimo.cCodigo = "A123456789"
		expect(@acronimo).to_not be_valid
	end

	it "Es inválido con la descripción de más de 150 carácteres" do
		@acronimo.cDescripcion = (0...200).map{'Z'}.join
		expect(@acronimo).to_not be_valid
	end	
	
	it "Es inválido meter valores duplicados de acrónimos" do		
		@acronimo = FactoryGirl.build(:acronimos_sede_edr)
		expect(@acronimo).to_not be_valid
	end

end