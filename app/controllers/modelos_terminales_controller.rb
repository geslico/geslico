class ModelosTerminalesController < ApplicationController
    load_and_authorize_resource
    before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    before_action :set_modelos_terminal, only: [:show, :edit, :update, :destroy]
    
    def index
        @q = ModelosTerminal.ransack params[:q]
        @modelos_terminales = @q.result.page(params[:page]).per(25)             
    end

    def show
        @modelos_terminal = ModelosTerminal.find(params[:id])    
    end if

    def new
        @modelos_terminal = ModelosTerminal.new()
    end

    def edit
    end

    def create
        @modelos_terminal = ModelosTerminal.new(modelos_terminal_params)
    
        respond_to do |format|
          if @modelos_terminal.save
            format.html { redirect_to @modelos_terminal, notice: 'Modelo creado correctamente.' }
          else
            format.html { render :new }
          end
        end
      end
    
      # PATCH/PUT /
      def update
        respond_to do |format|
          if @modelos_terminal.update(modelos_terminal_params)
            flash[:success] ='Modelo modificado correctamente.' 
            format.html { redirect_to @modelos_terminal }
          else
            format.html { render :edit }
          end
        end
      end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_modelos_terminal
            @modelos_terminal = ModelosTerminal.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def modelos_terminal_params
            params.require(:modelos_terminal).permit(:cMarca, :cModelo, :cSO , :nPulgadas, :nIdCategoria, :bDisponibilidad, :nTipoSIM, :bVigente, :cCaracteristicas, :cTipo)
        end
       
end
