
class Informe < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TInformesSQL"

    @@types = { 
        'sedes' =>       {'id' => 3, 'model' => TSede},
        'radio' =>       {'id' => 75,'model' => Radio},
        'movil' =>       {'id' => 1, 'model' => LineaMovil},
        'fija'  =>       {'id' => 2, 'model' => LineaFija},
        'electronica' => {'id' => 7, 'model' => ElectronicaRed},
        'datos' =>       {'id' => 5, 'model' => LineaDatos}
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
