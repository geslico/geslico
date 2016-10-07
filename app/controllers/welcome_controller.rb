class WelcomeController < ApplicationController
  
  #before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  	@t_contajes = TContaje.all
  	@t_fechas_carga = TFechasCarga.select("*").order("nOrden");
  end
end
