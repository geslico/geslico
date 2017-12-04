class UsuariosController < ApplicationController

  load_and_authorize_resource  
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  def index
    @q = Usuario.ransack params[:q]     
    @usuarios = @q.result.page(params[:page]).per(25)     
  end

  # GET /usuarios/1
  def show
    @usuario = Usuario.find(params[:id])    
    @usuarios_programas = @usuario.usuarios_programas.order(:sPrograma) 
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new()
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  def create
    @usuario_new = Usuario.new(usuario_params)

    respond_to do |format|
      if (@usuario_new.save())
        add_usuario_programas_permisos
        flash[:success] ='Usuario creado correctamente.' 
        format.html { redirect_to @usuario }        
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    
    params[:usuario].delete(:password) if params[:usuario][:password].blank?
    
    respond_to do |format|
      if @usuario.update(usuario_params)
        add_usuario_programas_permisos
        flash[:success] ='Usuario modificado correctamente.' 
        format.html { redirect_to @usuario }        
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario eliminado correctamente.' }      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:cCodUsuario, :cNombre, :cCorreo , :bActivo, :password, :password_confirmation, 
                                usuarios_programas_attributes: [:id, :nIdUsuario, :nCodPrograma, :sPermiso, 
                                programas_attributes:[ :nCodPrograma, :sPrograma, :sDescripcion, :sModelos ]])
    end
    
    def add_usuario_programas_permisos
      # Defino esta llamada al procedimiento almacenado para que actualice junto con el alta de los usuarios
      ActiveRecord::Base.connection.execute('EXEC geslico.dbo.AutoAltaUsuariosProgramas')
    end 
end
