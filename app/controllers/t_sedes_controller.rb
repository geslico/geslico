class TSedesController < ApplicationController
  
  before_action :logged_in_user, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_t_sede, only: [:show, :edit, :update, :destroy]

  # GET /t_sedes
  # GET /t_sedes.json
  def index    
    @t_sedes = TSede.page(params[:page]).per(30)

    @t_sedes = @t_sedes.nCodSede(params[:nCodSede]) if params[:nCodSede].present?
    @t_sedes = @t_sedes.cNombre(params[:cNombre]) if params[:cNombre].present?
    @t_sedes = @t_sedes.cDireccion(params[:cDireccion]) if params[:cDireccion].present?

    
  end

  # GET /t_sedes/1
  # GET /t_sedes/1.json
  def show
  end

  # GET /t_sedes/new
  def new
    @t_sede = TSede.new
  end

  # GET /t_sedes/1/edit
  def edit
  end

  # POST /t_sedes
  # POST /t_sedes.json
  def create
    @t_sede = TSede.new(t_sede_params)

    respond_to do |format|
      if @t_sede.save
        format.html { redirect_to @t_sede, notice: 'T sede was successfully created.' }
        format.json { render :show, status: :created, location: @t_sede }
      else
        format.html { render :new }
        format.json { render json: @t_sede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_sedes/1
  # PATCH/PUT /t_sedes/1.json
  def update
    respond_to do |format|
      if @t_sede.update(t_sede_params)
        format.html { redirect_to @t_sede, notice: 'T sede was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_sede }
      else
        format.html { render :edit }
        format.json { render json: @t_sede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_sedes/1
  # DELETE /t_sedes/1.json
  def destroy
    @t_sede.destroy
    respond_to do |format|
      format.html { redirect_to t_sedes_url, notice: 'T sede was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_sede
      @t_sede = TSede.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_sede_params
      params.fetch(:t_sede, {})
    end
  
end
