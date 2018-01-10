include CommonHelper

class SedesController < ApplicationController
  
  load_and_authorize_resource
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_sede, only: [:show, :edit, :update, :destroy]

  # GET /sedes
  def index    

    @q = Sede.ransack params[:q]    
    @sedes_csv = @q.result
    @sedes = @q.result.page(params[:page]).per(25)    

    respond_to do |format|
      format.html
      format.csv { send_data to_csv(@sedes_csv, Sede), filename: "sedes-#{Date.today}.csv" }
    end
    
  end

  # GET /sedes/1
  def show
  end

  # GET /sedes/new
  def new
    @sede = Sede.new
  end

  # GET /sedes/1/edit
  def edit
  end

  # POST /sedes
  def create
    @sede = Sede.new(sede_params)

    respond_to do |format|
      if @sede.save
        format.html { redirect_to @sede, notice: 'Sede creada correctamente.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /sedes/1
  def update
    respond_to do |format|
      if @sede.update(sede_params)
        format.html { redirect_to @sede, notice: 'Sede modificada correctamente' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /sedes/1
  def destroy
    @sede.destroy
    respond_to do |format|
      format.html { redirect_to sedes_url, notice: 'Sede eliminada correctamente' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sede
      @sede = Sede.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sede_params
      params.require(:sede).permit(:nCodSede, :nCodUni, :cNombre, :cDireccion , :cCodPostal, :cPersonaContacto, :ceMailContacto, 
        :cTelefonoContacto, :cCortoFijo, :cMovilContacto, :cCortoMovil, :cFax, :cPersonaContactoObserv, :nPCs, :nCodCampus,
        :nCriticidad, :bCoincidenciaSAP, :nCodEstado, :nDistrito, :cDevicePool, :nIdAcronimo, :nZona, :nCodEdificio, :nCodGestion,
        :bSedeToIP, :bsedeprincipalvoz, :bsedeprincipaldatos, :cUsuarioModificacion, :dFchModificacion, :id)
    end
    
end
