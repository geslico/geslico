
class Informe < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TInformesSQL"

    @@types = { 
        'sedes' =>           {'id' => 3, 'title' => 'Sedes',              'model' => Sede},
        'radio' =>           {'id' => 75,'title' => 'Radio',              'model' => Radio},
        'movil' =>           {'id' => 1, 'title' => 'Líneas Móvils',      'model' => LinMovil},
        'fija'  =>           {'id' => 2, 'title' => 'Líneas Fijas',       'model' => Linea},
        'electronica-red' => {'id' => 7, 'title' => 'Electrónica de Red', 'model' => Edr},
        'datos' =>           {'id' => 5, 'title' => 'Datos',              'model' => LinDatos}
    }

    def self.types()        
        @@types
    end
    
    def self.execute_statement(sql)
        result=ActiveRecord::Base.connection.select_all(sql)
        if result.present?
            return result
        else
            return nil
        end
    end

end
