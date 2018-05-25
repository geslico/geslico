
class ComponentesController < ApplicationController

  #load_and_authorize_resource
  before_action :require_login
 
  # GET /electronica_red/almacen
  def index         
      @q = Componente.ransack params[:q]  
      @componentes_csv = @q.result    
      @componentes = @q.result.order(:nCodComponente).page(params[:page]).per(25)    

      respond_to do |format|
        format.html
        format.csv { send_data to_csv(@componentes_csv, Componente), filename: "almacen-#{Date.today}.csv" }
      end
        
  end

  def show
    @componente = Componente.find(params[:id])                   
  end

end  