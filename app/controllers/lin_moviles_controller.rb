class LinMovilesController < ApplicationController
  
  load_and_authorize_resource  
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_lin_movil, only: [:show, :edit, :update, :destroy]  

  def new
  end

  def index           
    @q = LinMovil.ransack(params[:q])
    @lin_moviles = @q.result.page(params[:page]).per(25)            
  end
    
  def show    
  end

  def new
    @lin_movil = LinMovil.new()        
    @lin_movil.linea = Linea.new()        
    @lin_movil.linea.nCodEstLin = 3    
    
  end
  
  def edit    
  end 

  def create
    @lin_movil = LinMovil.new(lin_movil_params)    
    before_create_linea

    respond_to do |format|
      if (@lin_movil.linea.save() && @lin_movil.save())                        
        flash[:success] ='Línea Móvil creada correctamente.' 
        format.html { redirect_to @lin_movil }        
      else        
        format.html { render :new }
      end
    end
  end

  def update    
    respond_to do |format|      
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
    end
    
    def before_create_linea      
      #Recurrimos a una función para autogenera el id (numero de línea)      
      nLinea=Linea.get_new_linea(@lin_movil.linea.cNumero!=nil ? @lin_movil.linea.cNumero : @lin_movil.linea.cNumCorto).to_i
      @lin_movil.nLinea=nLinea
      @lin_movil.linea.nLinea=nLinea
      @lin_movil.linea.nCodUni= 10000001
      @lin_movil.linea.cUsuarioAlta = current_user.cCodUsuario
      @lin_movil.linea.cCodTipLinea = 2 
    end

    def lin_movil_params
      params.require(:lin_movil).permit(:id, :nCodTipMovil, :bHorarioExtendido, :bPrincipal, :cSoloEmergencia, :cPerfil, 
        :cPerfilAutorizado, :cCoberturaNormativa, :cUsuarioIntranet, :cIPm2m, :nNumFaxAsoc, :cInternetG, :cIntranetG, :cDualG, :cMultisimG,
        :cObserva, :bHorarioExtendido,
        linea_attributes: [:id, :cNumero, :cNumCorto, :nCodEstLin, :dFechaAlta, :dFechaBaja, :bListadoVIP, :bVIP, :nCodUni ])
    end
end
