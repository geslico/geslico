class LinMovilesController < ApplicationController
    
    def index 
        @q = LinMovil.ransack params[:q]     
        @lin_moviles = @q.result.page(params[:page]).per(25)            
    end

      # GET /usuarios/1
  def show
    @lin_movil = LinMovil.find(params[:id])        
  end

end
