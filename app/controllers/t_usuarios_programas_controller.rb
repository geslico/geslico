class TUsuariosProgramasController < ApplicationController
  
  before_action :require_login
  load_and_authorize_resource  
  before_action :set_t_usuarios_programa, only: [:show, :edit, :update, :destroy]

  # GET /t_usuarios_programas
  # GET /t_usuarios_programas.json
  def index
    @t_usuarios_programas = TUsuariosPrograma.all
  end

  # GET /t_usuarios_programas/1
  # GET /t_usuarios_programas/1.json
  def show
  end

  # GET /t_usuarios_programas/new
  def new
    @t_usuarios_programa = TUsuariosPrograma.new
  end

  # GET /t_usuarios_programas/1/edit
  def edit
  end

  # POST /t_usuarios_programas
  # POST /t_usuarios_programas.json
  def create
    @t_usuarios_programa = TUsuariosPrograma.new(t_usuarios_programa_params)

    respond_to do |format|
      if @t_usuarios_programa.save
        format.html { redirect_to @t_usuarios_programa, notice: 'T usuarios programa was successfully created.' }
        format.json { render :show, status: :created, location: @t_usuarios_programa }
      else
        format.html { render :new }
        format.json { render json: @t_usuarios_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_usuarios_programas/1
  # PATCH/PUT /t_usuarios_programas/1.json
  def update
    respond_to do |format|
      if @t_usuarios_programa.update(t_usuarios_programa_params)
        format.html { redirect_to @t_usuarios_programa, notice: 'T usuarios programa was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_usuarios_programa }
      else
        format.html { render :edit }
        format.json { render json: @t_usuarios_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_usuarios_programas/1
  # DELETE /t_usuarios_programas/1.json
  def destroy
    @t_usuarios_programa.destroy
    respond_to do |format|
      format.html { redirect_to t_usuarios_programas_url, notice: 'T usuarios programa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_usuarios_programa
      @t_usuarios_programa = TUsuariosPrograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_usuarios_programa_params
      #params.fetch(:t_usuarios_programa, {})
       params.require(:t_usuarios_programa).permit(:nIdUsuario, :nCodPrograma)
    end
end
