class TUnidadesController < ApplicationController
  before_action :set_t_unidad, only: [:show, :edit, :update, :destroy]

  # GET /t_unidades
  def index
    @organigrama = TUnidad.where("nCodUni=10000000 or nCodUniPadre=10000000 or nCodUniPadre=10000001 or nIdArea=10000002").arrange_as_array({:order => 'norder'})
    @t_unidades = TUnidad.all    
  end

  # GET /t_unidades/1
  def show
  end

  # GET /t_unidades/new
  # def new
    @t_unidad = TUnidad.new
  # end

  # GET /t_unidades/1/edit
  # def edit
  # end

  # POST /t_unidades
  # def create
  #   @t_unidad = TUnidad.new(t_unidad_params)

  #   respond_to do |format|
  #     if @t_unidad.save
  #       format.html { redirect_to @t_unidad, notice: 'T unidad was successfully created.' }
  #     else
  #       format.html { render :new }
  #     end
  #   end
  # end

  # PATCH/PUT /t_unidades/1
  #  def update
  #   respond_to do |format|
  #     if @t_unidad.update(t_unidad_params)
  #       format.html { redirect_to @t_unidad, notice: 'T unidad was successfully updated.' }      
  #     else
  #       format.html { render :edit }
  #     end
  #   end
  # end

  # DELETE /t_unidades/1
  # def destroy
  #   @t_unidad.destroy
  #   respond_to do |format|
  #     format.html { redirect_to t_unidades_url, notice: 'T unidad was successfully destroyed.' }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_unidad
      @t_unidad = TUnidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_unidad_params
      params.fetch(:t_unidad, {})
      #params.require(:t_unidad).permit(:name, :parent_id)
    end
end
