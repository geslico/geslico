class PersonasController < ApplicationController
    
    def show_results
        @results = Persona.ransack(params[:search]).result
        render :layout => false        
    end

end