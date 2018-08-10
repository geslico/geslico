
class ComponentesController < ApplicationController

  load_and_authorize_resource
  before_action :require_login, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_componente, only: [:update]
 
  # GET /electronica_red/inventario
  def index         
      @q = Componente.ransack params[:q]  
      @componentes_csv = @q.result  
      @componentes = @q.result.order(:nCodComponente).page(params[:page]).per(25)    

      respond_to do |format|
        format.html
        format.csv { send_data componente_to_csv(@componentes_csv, Componente), filename: "almacen-#{Date.today}.csv" }
      end
        
  end

  def show
    @componente = Componente.find(params[:id])                   
    @readonly = true    
  end

  def edit
    @componente = Componente.find(params[:id])                   
    @readonly = false    
  end

  # PATCH/PUT /
  def update    
      respond_to do |format|
      data = componente_params

      catalogo = Catalogo.catalogo(params['componente']['catalogo_attributes']['cFabricante'],
        params['componente']['catalogo_attributes']['cModelo']).first
      data['nCodTipoComponente'] = catalogo.id  
      data['catalogo_attributes']['id'] = catalogo.id
      
      #tipo_ubicacion = TipoUbicacion.where('cDescripcion = ?', params['componente']['tipo_ubicacion']['cDescripcion']).first
      #data['nCodUbicacion'] = tipo_ubicacion.id
            
      data['cUsuarioModificacion'] = current_user['cCodUsuario']
      data['dFchModificacion'] = Time.now.strftime("%Y/%m/%d %H:%M:%S")         
      
      if @componente.update(data)      
        flash[:success] ='Linea de datos modificada correctamente.' 
        format.html { redirect_to @componente }
      else
        format.html { render :edit }
      end
    end  
  end  

  def new
    @componente = Componente.new()
    @componente.catalogo = Catalogo.new()
    @readonly = false 
  end

  def create

    data = componente_params

    if (!params['componente']['catalogo_attributes']['cFabricante'].empty? && 
      !params['componente']['catalogo_attributes']['cModelo'].empty?)
      catalogo = Catalogo.catalogo(params['componente']['catalogo_attributes']['cFabricante'],
      params['componente']['catalogo_attributes']['cModelo']).first
      data['nCodTipoComponente'] = catalogo.nCodTipoComponente  
      data['catalogo_attributes']['id'] = catalogo.nCodTipoComponente
    end
  
    data['cUsuarioAlta'] = current_user['cCodUsuario']
    data['dFchAlta'] = Time.now.strftime("%Y/%m/%d %H:%M:%S")         

    @componente = Componente.new(data)

    respond_to do |format|

      if @componente.save
        format.html { redirect_to @componente, notice: 'Componente creado correctamente.' }
      else
        format.html { render :new }
      end

    end
  end

  private
  
      # Use callbacks to share common setup or constraints between actions.
    def set_componente
        @componente = Componente.find(params[:id])
    end    

    def componente_params
      params.require(:componente).permit(:nCodTipoComponente, :cPrefijoMAC, :cSerie, :cBien, :cExpediente, :nCodUbicacion,
        :dFchEntrada, :dFchSalida, :dFchFinGarantia, :dFchFinMantenimiento, :dFchBaja, :bUsado, :cObservaciones, :cUsuarioAlta,
        :dFchAlta, :cUsuarioModificacion, :dFchModificacion, catalogo_attributes: [:id, :cFabricante, :cModelo], tipo_ubicacion: [:id])
    end 

    def componente_to_csv(data, model)	
      CSV.generate(headers: true) do |csv|
        csv <<  model.external_column_names_to_csv
        data.each do |row|
          csv_row = []
          Componente.column_names_to_csv.each do |field|            
            csv_row << row.send(field)
            case field # a_variable is the variable we want to compare
              when "nCodSede"
                if !row.send(field).nil?
                  csv_row << Sede.find(row.send(field)).cNombre
                else        
                  csv_row << ''            
                end
              when "nCodElectronicaRed"
                if !row.send(field).nil?
                  csv_row << Edr.find(row.send(field)).cNombre
                  csv_row << Edr.find(row.send(field)).cIPGestion
                else        
                  csv_row << ''            
                  csv_row << ''            
                end
              when "nCodTipoComponente"
                csv_row.pop
                if !row.send(field).nil?
                  csv_row << Catalogo.find(row.send(field)).super_tipo_componente.cDescripcion
                  csv_row << Catalogo.find(row.send(field)).cFabricante
                  csv_row << Catalogo.find(row.send(field)).cModelo
                  csv_row << Catalogo.find(row.send(field)).nBocasRed
                else        
                  csv_row << ''
                  csv_row << ''
                  csv_row << ''
                  csv_row << ''
                end
              when "nCodUbicacion"
                csv_row.pop
                if !row.send(field).nil?
                  csv_row << TipoUbicacion.find(row.send(field)).cDescripcion
                else        
                  csv_row << ''
                end                
              when "bUsado"
                csv_row.pop
                if !row.send(field).nil?
                  csv_row << human_boolean(row.send(field))
                else        
                  csv_row << ''
                end                                
            end
          end 
        csv << csv_row
        end       
      end.encode('utf-8')
    end

end  