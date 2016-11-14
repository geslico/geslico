require 'rails_helper'

RSpec.describe "t_unidades/new", type: :view do
  before(:each) do
    assign(:t_unidad, TUnidad.new())
  end

  it "renders new t_unidad form" do
    render

    assert_select "form[action=?][method=?]", t_unidades_path, "post" do
    end
  end
end
