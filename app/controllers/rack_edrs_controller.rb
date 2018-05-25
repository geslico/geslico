include CommonHelper

class RackEdrsController < ApplicationController

  load_and_authorize_resource :except => [:foto]  
  before_action :require_login
 
  # GET /electronica_red/inventario
  def index         
    if params[:q] && params[:q].reject { |_k, v| v.blank? }.present?
      @q = RackEdr.ransack params[:q]
      # El parametro cod_sede es nil cuando es una búsqueda normal, no exportación a Excel
      if params[:cod_sede].nil?
        @sedes_racks = @q.result().distinct(:nCodSede).distinct(:nCodRack).order(:nCodSede, :nPlanta)
        # Sólo el primer rack de cada sede llevará el nCodSede, el resto se ponen a nil. Así la vista sabrá cuando debe crear y escrbir los 
        # datos de la sede.
        @primeravez = true
        @lin_datos = nil
        ultimo_nCodSede = -1
        @sedes_racks.each do |sede_rack|
          if (ultimo_nCodSede == sede_rack.nCodSede)
              sede_rack.nCodSede = nil
          else
              ultimo_nCodSede = sede_rack.nCodSede
          end
        end                  
      # Exportación a Excel del contenido según la búsqueda de una sede en concreto.  
      else
        racks = @q.result().distinct(:nCodRack).where("TRack.nCodSede = #{params[:cod_sede]}").order(:nCodSede, :nPlanta)
        if !racks.nil?
          respond_to do | format |
            csv_file = to_edr_csv(racks, params[:q]["edrs_cIPGestion_eq"], params[:q]["edrs_cNombre_cont"])
            format.csv { send_data csv_file, :filename => "edr_sede_#{params[:cod_sede]}.csv" }
          end
        end	  	          
      end    

    else
      @q = RackEdr.search
      @sedes_racks = []  
    end    
  end

  def show
  end

=begin    
  # GET /electronica-red/rack/new
  def new
    @rack = RackEdr.new
  end

  # POST /electronica-red/racks
  def create
    @rack = RackEdr.new(rack_params)

    respond_to do |format|
      if @rack.save
        format.html { redirect_to @rack, notice: 'Rack creado correctamente.' }
      else
        format.html { render :new }
      end
    end
  end
=end

  # GET /electronica_red/inventario/foto
  def foto

    authorize! :index, RackEdr

    @codSede = params[:cod_sede]
    @dir = nil
    if !params[:idr].nil? and !params[:dir].nil?
      @idRuta = Integer(params[:idr])
      @dir = params[:dir]
    elsif !params[:idr].nil?
      @idRuta = Integer(params[:idr])        
    else 
      @idRuta = RutaAdjunto.rutas_edr[0]
    end   
    
    @fotos = fotos(@codSede, RutaAdjunto.rutas_edr, "\\Fotos\\")

    if (!@dir.nil?)
      @ficheros = @fotos[@idRuta]['directorios'][@dir]
    else
      @ficheros = @fotos[@idRuta]['ficheros']
    end

  end
  
  def to_edr_csv(data, ip, name) 
    rack_header = ['COD. RACK; NOMBRE RACK; PLANTA;']
    edr_header = [';;;COD. EDR; IP; NOMBRE EDR; CRITICO']
    componente_header = [';;;;;;;COD.COMPONENTE; TIPO; FABRICANTE; MODELO; BOCAS; SERIE']
    puerto_header = [';;;;;;;PUERTO; ESTADO; TIPO; VLAN; POE; POE ON; IP VOZ; Nº CORTO; TRANSCEPTOR; Nº SERIE TRANSCP.']
    endpoint_header = [';;;;;;;ENDPOINT; Nº CORTO; REGLETA']    
    
		CSV.generate(headers: true) do |csv|
			if data != nil
        data.each do |rack|
          csv <<  rack_header 
          csv << ["#{rack.nCodRack};#{rack.cNombre};#{rack.nPlanta};"]          
          edrs = []
          if !ip.empty?
            edrs = rack.edrs.by_ip(ip)
          elsif !name.empty? 
            edrs = rack.edrs.by_name(name)
          else
            edrs = rack.edrs
          end  
          edrs.each do |edr|
            csv <<  edr_header           
            csv << ["#{rack.nCodRack};#{rack.cNombre};#{rack.nPlanta};#{edr.nCodElectronicaRed};#{edr.cIPGestion};#{edr.cNombre};"\
                    "#{human_boolean(edr.bCritico)}"]
            if (edr.componentes.length > 0)
              csv <<  componente_header
              edr.componentes.each do |componente|
                csv << ["#{rack.nCodRack};#{rack.cNombre};#{rack.nPlanta};#{edr.nCodElectronicaRed};#{edr.cIPGestion};#{edr.cNombre};"\
                        "#{human_boolean(edr.bCritico)};#{componente.nCodComponente};#{componente.catalogo.super_tipo_componente.cDescripcion};"\
                        "#{componente.catalogo.cFabricante};#{componente.catalogo.cModelo};#{componente.catalogo.nBocasRed};#{componente.cSerie}"]
              end
            end
            if (edr.nCodTipoEDR == 3 or edr.nCodTipoEDR == 6 or edr.nCodTipoEDR == 7)
              if (edr.endpoints.length > 0)
                csv << endpoint_header
                edr.endpoints.each do |endpoint|
                  csv << ["#{rack.nCodRack};#{rack.cNombre};#{rack.nPlanta};#{edr.nCodElectronicaRed};#{edr.cIPGestion};#{edr.cNombre};"\
                          "#{human_boolean(edr.bCritico)};#{endpoint.cEndPoint};#{endpoint.cNumCorto};#{endpoint.nRegleta}"]
                end  
              end  
            elsif (edr.puertos.length > 0)
              csv << puerto_header
              edr.puertos.each do |puerto|
                if puerto.poe.nil?
                  poe = 'No'
                  poeOn = '-'
                else
                  poe = 'Si'
                  poeOn = human_boolean(puerto.poe.bPoeStatus)
                end  
                if puerto.dispositivo.nil?
                    ipDispositivo = '-'
                    nCorto = '-'
                else
                    ipDispositivo = puerto.dispositivo.cIP
                    nCorto = puerto.dispositivo.lineas.first.cNumCorto
                end
                if puerto.trcp.nil?
                  trcpTipo = '-'
                  trcpNS = '-'
                else
                  trcpTipo = puerto.trcp.cDescripcion
                  trcpNS = puerto.trcp.cNumeroSerie
                end
                csv << ["#{rack.nCodRack};#{rack.cNombre};#{rack.nPlanta};#{edr.nCodElectronicaRed};#{edr.cIPGestion};#{edr.cNombre};"\
                        "#{human_boolean(edr.bCritico)};#{puerto.cPuerto};#{puerto.cStatus};#{puerto.tipo_puerto.cDescTipoPuerto};"\
                        "#{puerto.nCodVLan};#{poe};#{poeOn};#{ipDispositivo};#{nCorto};#{trcpTipo};#{trcpNS}"]
              end
            end                                  
          end  
        end        
			end	
		end.encode('utf-8')
  end	  
      
end
