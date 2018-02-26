class EdrsController < ApplicationController

  before_action :require_login
  
  # GET /electronica_red/almacen
  def index         
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @q = RackEdr.ransack params[:q]
      @sedes_racks = @q.result().distinct(:nCodSede).distinct(:nCodRack).order(:nCodSede, :nPlanta)

      # Sólo el primer rack de cada sede llevará el nCodSede, el resto se ponen a nil. Así la vista sabrá cuando debe crear y escrbir los 
      # datos de la sede.
      @primeravez = true
      ultimo_nCodSede = -1
      @sedes_racks.each do |sede_rack|
        if (ultimo_nCodSede == sede_rack.nCodSede)
            sede_rack.nCodSede = nil
        else     
            ultimo_nCodSede = sede_rack.nCodSede
        end
      end          
    else
      @q = RackEdr.search
      @sedes_racks = []  
    end
  end

  def show
  end
      
end
