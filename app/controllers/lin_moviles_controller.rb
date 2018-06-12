class LinMovilesController < ApplicationController
  
  load_and_authorize_resource  
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_lin_movil, only: [:show, :edit, :update, :destroy]

  def index       
    #lm=params[:q][:lin_movil_cont].to_s.split(" ")
    @q = LinMovil.ransack(params[:q])
    @lin_moviles = @q.result.page(params[:page]).per(25)            
  end
    
  def show
  end
  
  def create
  end

  def update
    respond_to do |format|
      puts "here$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$44"
      if @lin_movil.update(lin_movil_params)                
        flash[:success] ='Línea modificada correctamente.' 
        format.html { redirect_to @lin_movil }        
      else
        format.html { render :show }
      end
    end
  end

  private
    def set_lin_movil
      @lin_movil = LinMovil.find(params[:id])        
      @lin_movil.linea
      @lin_movil.persona
    end

    def lin_movil_params
      params.require(:lin_movil).permit(:nCodTipMovil, :bHorarioExtendido, :bPrincipal, :cSoloEmergencia, :cPerfil, :cPerfilAutorizado, :cCoberturaNormativa, :cUsuarioIntranet, :cIPm2m, linea_attributes: [:id, :cNumero, :cNumCorto, :nCodEstLin, :dFechaAlta, :dFechaBaja, :bListadoVIP])
    end
end
