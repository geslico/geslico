
class RadioSitesController < ApplicationController

  #load_and_authorize_resource
  before_action :require_login
 
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

end  