class TSedesController < ApplicationController
  
  load_and_authorize_resource
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_t_sede, only: [:show, :edit, :update, :destroy]

  # GET /t_sedes
  def index    

    @q = TSede.ransack params[:q]    
    @t_sedes = @q.result.page(params[:page]).per(25)
    #@t_sedes = @q.result.includes(:TUnidad, :TDistrito).page(params[:page]).per(25)
   
  end

  # GET /t_sedes/1
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
  def create
    @t_sede = TSede.new(t_sede_params)

    respond_to do |format|
      if @t_sede.save
        format.html { redirect_to @t_sede, notice: 'T sede was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /t_sedes/1
  def update
    respond_to do |format|
      if @t_sede.update(t_sede_params)
        format.html { redirect_to @t_sede, notice: 'T sede was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /t_sedes/1
  def destroy
    @t_sede.destroy
    respond_to do |format|
      format.html { redirect_to t_sedes_url, notice: 'T sede was successfully destroyed.' }
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
