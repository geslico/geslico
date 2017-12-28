class LineasController < ApplicationController

    #load_and_authorize_resource  
    #before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    
    def index 
        @lineas = Linea.all 
    end
end
