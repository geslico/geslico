class ContajesController < ApplicationController
  before_action :set_contaje, only: [:show, :edit, :update, :destroy]

  # GET /contajes
  # GET /contajes.json
  def index
    @contajes = Contaje.all
    #Sandra:
    # se crea un objeto paralelo que solamente contega 12 registros de la tabla tcontajes con la
    # condición que su código de contaje este entre 200 y 300 que son los que corresponden a 
    #telefonía fija y además con la instrucción NEWID() en el orderby indicamos que sean aleatorios
    @contajes_fijas = Contaje.select("TOP 11 *").where("nCodContaje>=200 and nCodContaje<299").order("NEWID()");
    @contajes_electronica = Contaje.select("TOP 11 *").where("nCodContaje>=700 and nCodContaje<799").order("NEWID()");
    @contajes_movil = Contaje.select("TOP 11 *").where("nCodContaje>=120 and nCodContaje<199").order("NEWID()");

  end

  # GET /contajes/1
  # GET /contajes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contaje
      @contaje = Contaje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contaje_params
      params.fetch(:contaje, {})
    end

    
end
