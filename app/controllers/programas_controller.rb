class TProgramasController < ApplicationController
  before_action :seprograma, only: [:show, :edit, :update, :destroy]

  # GET /programas
  def index    
    @q = TPrograma.ransack params[:q] 
    @programas = @q
  end

  # GET /programas/1
  def show
  end

  # GET /programas/new
  def new
    @programa = TPrograma.new
  end

  # GET /programas/1/edit
  def edit
  end

  # POST /programas
  def create
    @programa = TPrograma.new(programa_params)

    respond_to do |format|
      if @programa.save
        format.html { redirect_to @programa, notice: 'T programa was successfully created.' }        
      else
        format.html { render :new }        
      end
    end
  end

  # PATCH/PUT /programas/1
  def update
    respond_to do |format|
      if @programa.update(programa_params)
        format.html { redirect_to @programa, notice: 'T programa was successfully updated.' }

      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /programas/1
  def destroy
    @programa.destroy
    respond_to do |format|
      format.html { redirect_to programas_url, notice: 'T programa was successfully destroyed.' }    
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def seprograma
      @programa = TPrograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programa_params
      params.fetch(:programa, {})
    end
end
