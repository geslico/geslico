class LineasController < ApplicationController

    #load_and_authorize_resource  
    #before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    
    #def index 
    #    @lineas = Linea.all 
    #end

    def index
        @q = Linea.ransack params[:q]
        @lineas = @q.result.page(params[:page]).per(25)             
    end

    def show
        @linea = Linea.find(params[:id])    
    end if

end
