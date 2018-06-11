
class RadioSitesController < ApplicationController

  load_and_authorize_resource
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_radio_site, only: [:update]
 
  # GET /radio/sites
  def index         
      @q = RadioSite.ransack params[:q]  
      @sites_csv = @q.result    
      @sites = @q.result.order(:nCodSite).page(params[:page]).per(25)    

      respond_to do |format|
        format.html
        format.csv { send_data to_csv(@sites_csv, SiteRadio), filename: "sites-#{Date.today}.csv" }
      end        
  end

  def show
    @radio_site = RadioSite.find(params[:id])                   
    @readonly = true
  end

  def edit
    @radio_site = RadioSite.find(params[:id])                   
    @readonly = false
  end

  # PATCH/PUT /
  def update
    
      respond_to do |format|

      if @radio_site.update(radio_site_params)      
        flash[:success] ='Linea de datos modificada correctamente.' 
        format.html { redirect_to @radio_site }
      else
        format.html { render :edit }
      end
    end  
  end

  private

      # Use callbacks to share common setup or constraints between actions.
    def set_radio_site
        @radio_site = RadioSite.find(params[:id])
    end    

    def radio_site_params
      #:sede_attributes => [:id, :cNombre, :cDireccion]
      params.require(:radio_site).permit(:cNombreSite, :nBCC, :nCodTipo, :nCodEstado, :nCodSede, :cPropietarioSite,
        :cContactoSite, :cTramiacreditaSite, :cTfnoconSite, :cHorarioSite, :ceMailContactoSite, :cUbiLlavesSite,
        :cInstrucAccesoSite, :bAcreditacionSite, :bLlavesSite, :cCoordenadaSiteN, :cCoordenadaSiteO, :nLineaTfno, 
        :cCotaTerreno, :cAlturaTorre, :cAlturaEdif, :cUbicaTorre, :cUbicaSite, :cDimensiones, :ctipoTorre, :cTipoBaliza, 
        :nExtinSite, :bTorreLinvida, :bParaRayos, :bTomaTierraPrayos, :bTomaTierraEq, :bClimatizaSite, :bContBaliza, 
        :cCompEltrec, :cCupsElec, :nNuncontElec, :nNumTfnoave, :cTipoElec, :cPotenElec, :bMunielec, :cUbicaContador,
        :cUbicaInterrup, :cLlavescontador, :cVcaEntrada, :bReconecatoras, :bTomaGelectro, :bTomaGelectro, :cNomCentralAlarm, 
        :cTipocentralAlarm, :nLineaAsocAlarm, :cAlimenAlarm, :bBateriasAlarm, :cNomRadioM, :cTipoEquRedMovil, :cFabricRadioM, 
        :cNumEbt, :cSwmi, :cTipoEnlace, :nNumPorteadoras, :cTipoAntenRx, :cTipoAntenTx, :bDiveridadRx)        
    end  
    
end  