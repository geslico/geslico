class TContajesController < ApplicationController
  before_action :set_t_contaje, only: [:show, :edit, :update, :destroy]

  # GET /t_contajes
  # GET /t_contajes.json
  def index
    @t_contajes = TContaje.all
    #Sandra:
    # se crea un objeto paralelo que solamente contega 12 registros de la tabla tcontajes con la
    # condición que su código de contaje este entre 200 y 300 que son los que corresponden a 
    #telefonía fija y además con la instrucción NEWID() en el orderby indicamos que sean aleatorios
    @t_contajes_fijas = TContaje.select("TOP 11 *").where("nCodContaje>=200 and nCodContaje<299").order("NEWID()");
    @t_contajes_electronica = TContaje.select("TOP 11 *").where("nCodContaje>=700 and nCodContaje<799").order("NEWID()");
    @t_contajes_movil = TContaje.select("TOP 11 *").where("nCodContaje>=120 and nCodContaje<199").order("NEWID()");
  end

  # GET /t_contajes/1
  # GET /t_contajes/1.json
  def show
  end

  # GET /t_contajes/new
  def new
    @t_contaje = TContaje.new
  end

  # GET /t_contajes/1/edit
  def edit
  end

  # POST /t_contajes
  # POST /t_contajes.json
  def create
    @t_contaje = TContaje.new(t_contaje_params)

    respond_to do |format|
      if @t_contaje.save
        format.html { redirect_to @t_contaje, notice: 'T contaje was successfully created.' }
        format.json { render :show, status: :created, location: @t_contaje }
      else
        format.html { render :new }
        format.json { render json: @t_contaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_contajes/1
  # PATCH/PUT /t_contajes/1.json
  def update
    respond_to do |format|
      if @t_contaje.update(t_contaje_params)
        format.html { redirect_to @t_contaje, notice: 'T contaje was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_contaje }
      else
        format.html { render :edit }
        format.json { render json: @t_contaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_contajes/1
  # DELETE /t_contajes/1.json
  def destroy
    @t_contaje.destroy
    respond_to do |format|
      format.html { redirect_to t_contajes_url, notice: 'T contaje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_contaje
      @t_contaje = TContaje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_contaje_params
      params.fetch(:t_contaje, {})
    end
end
