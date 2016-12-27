class TUsuariosProgramasController < ApplicationController
  
  before_action :require_login
  load_and_authorize_resource  
  before_action :set_t_usuarios_programa, only: [:show, :edit, :update, :destroy]

  # GET /t_usuarios_programas
  def index
    @t_usuarios_programas = TUsuariosPrograma.all
  end

  # GET /t_usuarios_programas/1
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
  def create
    @t_usuarios_programa = TUsuariosPrograma.new(t_usuarios_programa_params)

    respond_to do |format|
      if @t_usuarios_programa.save
        format.html { redirect_to @t_usuarios_programa, notice: 'T usuarios programa was successfully created.' }      
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /t_usuarios_programas/1
  def update
    respond_to do |format|
      if @t_usuarios_programa.update(t_usuarios_programa_params)
        format.html { redirect_to @t_usuarios_programa, notice: 'T usuarios programa was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /t_usuarios_programas/1
  def destroy
    @t_usuarios_programa.destroy
    respond_to do |format|
      format.html { redirect_to t_usuarios_programas_url, notice: 'T usuarios programa was successfully destroyed.' }
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