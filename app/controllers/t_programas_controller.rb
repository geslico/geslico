class TProgramasController < ApplicationController
  before_action :set_t_programa, only: [:show, :edit, :update, :destroy]

  # GET /t_programas
  def index    
    @q = TPrograma.ransack params[:q] 
    @t_programas = @q
  end

  # GET /t_programas/1
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
  def create
    @t_programa = TPrograma.new(t_programa_params)

    respond_to do |format|
      if @t_programa.save
        format.html { redirect_to @t_programa, notice: 'T programa was successfully created.' }        
      else
        format.html { render :new }        
      end
    end
  end

  # PATCH/PUT /t_programas/1
  def update
    respond_to do |format|
      if @t_programa.update(t_programa_params)
        format.html { redirect_to @t_programa, notice: 'T programa was successfully updated.' }

      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /t_programas/1
  def destroy
    @t_programa.destroy
    respond_to do |format|
      format.html { redirect_to t_programas_url, notice: 'T programa was successfully destroyed.' }    
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
