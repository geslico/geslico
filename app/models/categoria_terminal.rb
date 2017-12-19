class CategoriaTerminal < ApplicationRecord
    
    self.table_name ="geslico.dbo.TCategoriaTerminales"

    has_many :modelos_terminales, :foreign_key => "nIdCategoria", :primary_key => "nId"

    def desc_categoria
        "#{cCategoria} (#{cDescripcion})"
    end
    
end
