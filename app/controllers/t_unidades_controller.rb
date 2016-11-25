class TUnidadesController < ApplicationController
  before_action :set_t_unidad, only: [:show, :edit, :update, :destroy]

  # GET /t_unidades
  # GET /t_unidades.json
  def index
    @organigrama = TUnidad.where("nCodUni=10000000 or nCodUniPadre=10000000 or nCodUniPadre=10000001 or nIdArea=10000002").arrange_as_array({:order => 'norder'})
    @t_unidades = TUnidad.all    
  end

  # GET /t_unidades/1
  # GET /t_unidades/1.json
  def show
  end

  # GET /t_unidades/new
  def new
    @t_unidad = TUnidad.new
  end

  # GET /t_unidades/1/edit
  def edit
  end

  # POST /t_unidades
  # POST /t_unidades.json
  def create
    @t_unidad = TUnidad.new(t_unidad_params)

    respond_to do |format|
      if @t_unidad.save
        format.html { redirect_to @t_unidad, notice: 'T unidad was successfully created.' }
        format.json { render :show, status: :created, location: @t_unidad }
      else
        format.html { render :new }
        format.json { render json: @t_unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_unidades/1
  # PATCH/PUT /t_unidades/1.json
  def update
    respond_to do |format|
      if @t_unidad.update(t_unidad_params)
        format.html { redirect_to @t_unidad, notice: 'T unidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_unidad }
      else
        format.html { render :edit }
        format.json { render json: @t_unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_unidades/1
  # DELETE /t_unidades/1.json
  def destroy
    @t_unidad.destroy
    respond_to do |format|
      format.html { redirect_to t_unidades_url, notice: 'T unidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

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
