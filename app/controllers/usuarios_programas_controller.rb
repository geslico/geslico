class UsuariosProgramasController < ApplicationController
  
  before_action :require_login
  load_and_authorize_resource  
  before_action :seusuarios_programa, only: [:show, :edit, :update, :destroy]

  # GET /usuarios_programas
  def index
    @usuarios_programas = UsuariosPrograma.all
  end

  # GET /usuarios_programas/1
  def show
  end

  # GET /usuarios_programas/new
  def new
    @usuarios_programa = UsuariosPrograma.new
  end

  # GET /usuarios_programas/1/edit
  def edit
  end

  # POST /usuarios_programas
  def create
    @usuarios_programa = UsuariosPrograma.new(usuarios_programa_params)

    respond_to do |format|
      if @usuarios_programa.save
        format.html { redirect_to @usuarios_programa, notice: 'T usuarios programa was successfully created.' }      
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /usuarios_programas/1
  def update
    respond_to do |format|
      if @usuarios_programa.update(usuarios_programa_params)
        format.html { redirect_to @usuarios_programa, notice: 'T usuarios programa was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /usuarios_programas/1
  def destroy
    @usuarios_programa.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_programas_url, notice: 'T usuarios programa was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def seusuarios_programa
      @usuarios_programa = UsuariosPrograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuarios_programa_params
      #params.fetch(:usuarios_programa, {})
       params.require(:usuarios_programa).permit(:nIdUsuario, :nCodPrograma)
    end
end