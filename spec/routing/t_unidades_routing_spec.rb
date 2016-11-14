require "rails_helper"

RSpec.describe TUnidadesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/t_unidades").to route_to("t_unidades#index")
    end

    it "routes to #new" do
      expect(:get => "/t_unidades/new").to route_to("t_unidades#new")
    end

    it "routes to #show" do
      expect(:get => "/t_unidades/1").to route_to("t_unidades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/t_unidades/1/edit").to route_to("t_unidades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/t_unidades").to route_to("t_unidades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/t_unidades/1").to route_to("t_unidades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/t_unidades/1").to route_to("t_unidades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/t_unidades/1").to route_to("t_unidades#destroy", :id => "1")
    end

  end
end
