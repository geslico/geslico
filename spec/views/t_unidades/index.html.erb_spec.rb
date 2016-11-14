require 'rails_helper'

RSpec.describe "t_unidades/index", type: :view do
  before(:each) do
    assign(:t_unidades, [
      TUnidad.create!(),
      TUnidad.create!()
    ])
  end

  it "renders a list of t_unidades" do
    render
  end
end
