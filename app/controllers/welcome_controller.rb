class WelcomeController < ApplicationController
  
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  	@contajes = Contaje.all
  	@fechas_carga = FechasCarga.select("*").order("nOrden");
  end
end
