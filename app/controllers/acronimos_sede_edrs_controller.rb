class AcronimosSedeEdrsController < ApplicationController
	
	 load_and_authorize_resource 
	 before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
	 before_action :set_acronimos_sede_edr, only: [:show, :edit, :update, :destroy]

	def index		
		@q = AcronimosSedeEdr.ransack params[:q]     
		@acronimos_sede_edr = @q.result.page(params[:page]).per(25)     
	end

	def show
	end

	def new
		@acronimos_sede_edr = AcronimosSedeEdr.new
  	end

	def edit
	end


	# POST /t_acronimos_sede_edr
  	def create
			@acronimos_sede_edr = AcronimosSedeEdr.new(acronimos_sede_edr_params)

	    respond_to do |format|
				if @acronimos_sede_edr.save
					flash[:success] ='Acrónimo creado correctamente.' 	
	        format.html { redirect_to @acronimos_sede_edr }
	      else
	        format.html { render :new }
	      end
	    end
  	end

	# PATCH/PUT /t_acronimos_sede_edr_params
	def update
		respond_to do |format|
			if @acronimos_sede_edr.update(acronimos_sede_edr_params)
				flash[:success] ='Acrónimo modificado correctamente.' 
		    format.html { redirect_to @acronimos_sede_edr }
		  else
		    format.html { render :edit }
		  end
		end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_acronimos_sede_edr
      @acronimos_sede_edr = AcronimosSedeEdr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acronimos_sede_edr_params
      params.require(:acronimos_sede_edr).permit( :nId, :cCodigo, :cDescripcion)
    end

end