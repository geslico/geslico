class UnidadesController < ApplicationController
  before_action :seunidad, only: [:show, :edit, :update, :destroy]

  # GET /unidades
  def index
    @organigrama = Unidad.where("nCodUni=10000000 or nCodUniPadre=10000000 or nCodUniPadre=10000001 or nIdArea=10000002").arrange_as_array({:order => 'norder'})
    @unidades = Unidad.all    
  end

  # GET /unidades/1
  def show
  end

  # GET /unidades/new
  # def new
    @unidad = Unidad.new
  # end

  # GET /unidades/1/edit
  # def edit
  # end

  # POST /unidades
  # def create
  #   @unidad = Unidad.new(unidad_params)

  #   respond_to do |format|
  #     if @unidad.save
  #       format.html { redirect_to @unidad, notice: 'T unidad was successfully created.' }
  #     else
  #       format.html { render :new }
  #     end
  #   end
  # end

  # PATCH/PUT /unidades/1
  #  def update
  #   respond_to do |format|
  #     if @unidad.update(unidad_params)
  #       format.html { redirect_to @unidad, notice: 'T unidad was successfully updated.' }      
  #     else
  #       format.html { render :edit }
  #     end
  #   end
  # end

  # DELETE /unidades/1
  # def destroy
  #   @unidad.destroy
  #   respond_to do |format|
  #     format.html { redirect_to unidades_url, notice: 'T unidad was successfully destroyed.' }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidad
      @unidad = Unidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidad_params
      params.fetch(:unidad, {})
      #params.require(:unidad).permit(:name, :parent_id)
    end
end
