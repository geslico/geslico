require 'rails_helper'

RSpec.describe "t_unidades/show", type: :view do
  before(:each) do
    @t_unidad = assign(:t_unidad, TUnidad.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
