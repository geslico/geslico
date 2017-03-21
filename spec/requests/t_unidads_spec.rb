require 'rails_helper'

RSpec.describe "TUnidades", type: :request do
  describe "GET /t_unidades" do
    it "works! (now write some real specs)" do
      get t_unidades_path
      expect(response).to have_http_status(200)
    end
  end
end
