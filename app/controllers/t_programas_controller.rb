class TProgramasController < ApplicationController
  before_action :set_t_programa, only: [:show, :edit, :update, :destroy]

  # GET /t_programas
  # GET /t_programas.json
  def index    
    @q = TPrograma.ransack params[:q] 
    @t_programas = @q
  end

  # GET /t_programas/1
  # GET /t_programas/1.json
  def show
  end

  # GET /t_programas/new
  def new
    @t_programa = TPrograma.new
  end

  # GET /t_programas/1/edit
  def edit
  end

  # POST /t_programas
  # POST /t_programas.json
  def create
    @t_programa = TPrograma.new(t_programa_params)

    respond_to do |format|
      if @t_programa.save
        format.html { redirect_to @t_programa, notice: 'T programa was successfully created.' }
        format.json { render :show, status: :created, location: @t_programa }
      else
        format.html { render :new }
        format.json { render json: @t_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_programas/1
  # PATCH/PUT /t_programas/1.json
  def update
    respond_to do |format|
      if @t_programa.update(t_programa_params)
        format.html { redirect_to @t_programa, notice: 'T programa was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_programa }
      else
        format.html { render :edit }
        format.json { render json: @t_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_programas/1
  # DELETE /t_programas/1.json
  def destroy
    @t_programa.destroy
    respond_to do |format|
      format.html { redirect_to t_programas_url, notice: 'T programa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_programa
      @t_programa = TPrograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_programa_params
      params.fetch(:t_programa, {})
    end
end
