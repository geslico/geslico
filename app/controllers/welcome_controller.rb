class WelcomeController < ApplicationController
  def index
  	@t_contajes = TContaje.all
  	#Sandra:
    # se crea un objeto paralelo que solamente contega 12 registros de la tabla tcontajes con la
    # condición que su código de contaje este entre 200 y 300 que son los que corresponden a 
    #telefonía fija y además con la instrucción NEWID() en el orderby indicamos que sean aleatorios
    @t_contajes_fijas = TContaje.select("TOP 11 *").where("nCodContaje>=200 and nCodContaje<299").order("NEWID()");
    @t_contajes_electronica = TContaje.select("TOP 11 *").where("nCodContaje>=700 and nCodContaje<799").order("NEWID()");
    @t_contajes_movil = TContaje.select("TOP 11 *").where("nCodContaje>=120 and nCodContaje<199").order("NEWID()");

  	@t_fechas_carga = TFechasCarga.all
  end
end
