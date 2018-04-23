
class RutaAdjunto < ApplicationRecord

	#Nombre de tabla mapeada
    self.table_name ="geslico.dbo.TRutasAdjuntos"

    @@rutas_sedes = [1, 2, 4, 5, 6, 8, 9, 10, 12, 13, 14, 15]
    @@rutas_edr = [8, 9, 10, 12, 13, 14]

    def self.rutas_sedes()            
        @@rutas_sedes
    end    
    
    def self.rutas_edr()            
        @@rutas_edr
    end    
end
