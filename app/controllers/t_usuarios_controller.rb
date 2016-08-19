class TUsuariosController < ApplicationController
  before_action :set_t_usuario, only: [:show, :edit, :update, :destroy]

  # GET /t_usuarios
  # GET /t_usuarios.json
  def index
    #@t_usuarios = TUsuario.all
    @t_usuarios = TUsuario.all
    @t_usuarios = @t_usuarios.cCodUsuario(params[:cCodUsuario]) if params[:cCodUsuario].present?
    @t_usuarios = @t_usuarios.cNombre(params[:cNombre]) if params[:cNombre].present?
  end

  # GET /t_usuarios/1
  # GET /t_usuarios/1.json
  def show
  end

  # GET /t_usuarios/new
  def new
    @t_usuario = TUsuario.new
  end

  # GET /t_usuarios/1/edit
  def edit
  end

  # POST /t_usuarios
  # POST /t_usuarios.json
  def create
    @t_usuario = TUsuario.new(t_usuario_params)

    respond_to do |format|
      if @t_usuario.save
        format.html { redirect_to @t_usuario, notice: 'T usuario was successfully created.' }
        format.json { render :show, status: :created, location: @t_usuario }
      else
        format.html { render :new }
        format.json { render json: @t_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_usuarios/1
  # PATCH/PUT /t_usuarios/1.json
  def update
    respond_to do |format|
      if @t_usuario.update(t_usuario_params)
        format.html { redirect_to @t_usuario, notice: 'T usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_usuario }
      else
        format.html { render :edit }
        format.json { render json: @t_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_usuarios/1
  # DELETE /t_usuarios/1.json
  def destroy
    @t_usuario.destroy
    respond_to do |format|
      format.html { redirect_to t_usuarios_url, notice: 'T usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_usuario
      @t_usuario = TUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_usuario_params
      params.fetch(:t_usuario, {})
    end
end
