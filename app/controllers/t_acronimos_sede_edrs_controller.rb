class TAcronimosSedeEdrsController < ApplicationController
	
	 #load_and_authorize_resource 
	 before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
	 before_action :set_t_acronimos_sede_edr, only: [:show, :edit, :update, :destroy]

	def index		
		@q = TAcronimosSedeEdr.ransack params[:q]     
		@t_AcronimosSedeEdr = @q.result.page(params[:page]).per(25)     
	end

	def show
	end

	def new
	    @t_AcronimosSedeEdr = TAcronimosSedeEdr.new
  	end

	def edit
	end


	# POST /t_acronimos_sede_edr
  	def create
	    @t_AcronimosSedeEdr = TAcronimosSedeEdr.new(t_acronimos_sede_edr_params)

	    respond_to do |format|
	      if @t_AcronimosSedeEdr.save
	        format.html { redirect_to @t_AcronimosSedeEdr, notice: 'Acrónimo creado correctamente.' }
	      else
	        format.html { render :new }
	      end
	    end
  	end

	# PATCH/PUT /t_acronimos_sede_edr_params
	def update
		respond_to do |format|
		  if @t_AcronimosSedeEdr.update(t_acronimos_sede_edr_params)
		    format.html { redirect_to @t_AcronimosSedeEdr, notice: 'Acrónimo modificado correctamente' }
		  else
		    format.html { render :edit }
		  end
		end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_acronimos_sede_edr
      @t_AcronimosSedeEdr = TAcronimosSedeEdr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_acronimos_sede_edr_params
      params.require(:t_acronimos_sede_edr).permit( :nId, :cCodigo, :cDescripcion)
    end

end