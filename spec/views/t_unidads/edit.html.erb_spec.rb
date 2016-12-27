require 'rails_helper'

RSpec.describe "t_unidades/edit", type: :view do
  before(:each) do
    @t_unidad = assign(:t_unidad, TUnidad.create!())
  end

  it "renders the edit t_unidad form" do
    render

    assert_select "form[action=?][method=?]", t_unidad_path(@t_unidad), "post" do
    end
  end
end
