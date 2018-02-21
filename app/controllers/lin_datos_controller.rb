class LinDatosController < ApplicationController
    load_and_authorize_resource
    before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    before_action :set_lin_dato, only: [:show, :edit, :update, :destroy]
    
    def index
        @q = LinDato.ransack params[:q]
        @lin_datos = @q.result.page(params[:page]).per(25)             
    end

    def show
      @lin_dato = LinDato.find(params[:id])                   
      @backup = LinDato.find_by nPrincipal: @lin_dato.nCodLinDatos 
      @lin_dato_VPN_VLan =  @lin_dato.lin_datos_vpn_vlan     
      @vpn_vlan =  @lin_dato.vpn_vlan     
    end
    
    def new
        @lin_dato = LinDato.new()
    end

    def create
      @lin_dato = LinDato.new(lin_dato_params)
  
      respond_to do |format|
        if @lin_dato.save
          format.html { redirect_to @lin_dato, notice: 'Linea de datos creada correctamente.' }
        else
          format.html { render :new }
        end
      end
    end
  
    # PATCH/PUT /
    def update
     
      respond_to do |format|

        if @lin_dato.update(lin_dato_params)            

          if  params['chkVlan'] != nil
            @lin_dato.lin_datos_vpn_vlan.each { |lineaDato| lineaDato.delete }          
          
            params['chkVlan'].each{ |a| 
                      
              #result = LinDatosVpnVlan.new(
              #  :nCodLinDatos => @lin_dato.nCodLinDatos, 
              #  :nIdVLan => a.rpartition('-').first.to_i, 
              #  :nIdVPN => a.rpartition('-').last.to_i,
              #  :cUsuarioAlta => @current_user.cCodUsuario, 
              #  :dFchAlta => Time.now.strftime("%Y/%m/%d %H:%M:%S")
              #)
              #result.save
            
              idVlan = a.rpartition('-').first.to_i
              idVpn = a.rpartition('-').last.to_i
              t =  Time.now.strftime("%Y/%m/%d %H:%M:%S")

              ActiveRecord::Base.connection.execute("EXEC geslico.dbo.AutoAltaVpnVlan #{@lin_dato.nCodLinDatos},#{idVlan},#{idVpn},'#{@current_user.cCodUsuario}','#{t}'")
            
            }

          end 

          flash[:success] ='Linea de datos modificada correctamente.' 
          format.html { redirect_to @lin_dato }
        else
          format.html { render :edit }
        end
      end
    end



    private
        # Use callbacks to share common setup or constraints between actions.
        def set_lin_dato
            @lin_dato = LinDato.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def lin_dato_params
            params.require(:lin_dato).permit(:nCodLinDatos,:nCodTipDatos,:nNumAdmin,
            :nCodSedeA,:nCodSedeB,:bPrincipal,:nCodEstLin,:dFechaAlta,:dFechaBaja,:nCodTipoLote,:cAnillo,
            :nLinea,:nAccesos,:cNemonico,:nAnchoBanda,:nAnchoBandaVoz,:cIP,:nVelocidad,:fInstalacion,
            :bConcurso,:cObservaciones)
        end

end
