class TAcronimosSedeEdRsController < ApplicationController
  
  load_and_authorize_resource
  before_action :set_t_acronimos_sede_edr, only: [:show, :edit, :update, :destroy]

  # GET /t_acronimos_sede_edrs
  # GET /t_acronimos_sede_edrs.json
  def index
    @t_acronimos_sede_edrs = TAcronimosSedeEdr.all
  end

  # GET /t_acronimos_sede_edrs/1
  # GET /t_acronimos_sede_edrs/1.json
  def show
  end

  # GET /t_acronimos_sede_edrs/new
  def new
    @t_acronimos_sede_edr = TAcronimosSedeEdr.new
  end

  # GET /t_acronimos_sede_edrs/1/edit
  def edit
  end

  # POST /t_acronimos_sede_edrs
  # POST /t_acronimos_sede_edrs.json
  def create
    @t_acronimos_sede_edr = TAcronimosSedeEdr.new(t_acronimos_sede_edr_params)

    respond_to do |format|
      if @t_acronimos_sede_edr.save
        format.html { redirect_to @t_acronimos_sede_edr, notice: 'T acronimos sede edr was successfully created.' }
        format.json { render :show, status: :created, location: @t_acronimos_sede_edr }
      else
        format.html { render :new }
        format.json { render json: @t_acronimos_sede_edr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_acronimos_sede_edrs/1
  # PATCH/PUT /t_acronimos_sede_edrs/1.json
  def update
    respond_to do |format|
      if @t_acronimos_sede_edr.update(t_acronimos_sede_edr_params)
        format.html { redirect_to @t_acronimos_sede_edr, notice: 'T acronimos sede edr was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_acronimos_sede_edr }
      else
        format.html { render :edit }
        format.json { render json: @t_acronimos_sede_edr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_acronimos_sede_edrs/1
  # DELETE /t_acronimos_sede_edrs/1.json
  def destroy
    @t_acronimos_sede_edr.destroy
    respond_to do |format|
      format.html { redirect_to t_acronimos_sede_edrs_url, notice: 'T acronimos sede edr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_acronimos_sede_edr
      @t_acronimos_sede_edr = TAcronimosSedeEdr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_acronimos_sede_edr_params
      params.fetch(:t_acronimos_sede_edr, {})
    end
end
