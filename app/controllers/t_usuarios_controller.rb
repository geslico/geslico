class TUsuariosController < ApplicationController

  load_and_authorize_resource  
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_t_usuario, only: [:show, :edit, :update, :destroy]

  # GET /t_usuarios
  def index
    @q = TUsuario.ransack params[:q]     
    @t_usuarios = @q.result.page(params[:page]).per(25)     
  end

  # GET /t_usuarios/1
  def show
    @t_usuario = TUsuario.find(params[:id])    
    @t_usuarios_programas = @t_usuario.t_usuarios_programas.order(:sPrograma) 
  end

  # GET /t_usuarios/new
  def new
    @t_usuario = TUsuario.new()
  end

  # GET /t_usuarios/1/edit
  def edit
  end

  # POST /t_usuarios
  def create
    @t_usuario = TUsuario.new(t_usuario_params)

    respond_to do |format|
      if @t_usuario.save
        add_usuario_programas_permisos
        format.html { redirect_to @t_usuario, notice: 'Usuario creado correctamente.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /t_usuarios/1
  def update
    
    params[:t_usuario].delete(:password) if params[:t_usuario][:password].blank?

    respond_to do |format|
      if @t_usuario.update(t_usuario_params)
        add_usuario_programas_permisos
        format.html { redirect_to @t_usuario, notice: 'Usuario modificado correctamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /t_usuarios/1
  def destroy
    @t_usuario.destroy
    respond_to do |format|
      format.html { redirect_to t_usuarios_url, notice: 'Usuario eliminado correctamente.' }      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_usuario
      @t_usuario = TUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_usuario_params
      params.require(:t_usuario).permit(:cCodUsuario, :cNombre, :cCorreo , :bActivo, :password,
                                   :password_confirmation, t_usuarios_programas_attributes: [:id, :nIdUsuario, :nCodPrograma, :sPermiso])
    end
    def add_usuario_programas_permisos
      # Defino esta llamada al procedimiento almacenado para que actualice junto con el alta de los usuarios
      ActiveRecord::Base.connection.execute('EXEC geslico.dbo.AutoAltaUsuariosProgramas')
    end 
end
