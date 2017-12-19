class ModelosTerminal < ApplicationRecord
    
    self.table_name ="geslico.dbo.TModelosTerminales"

    belongs_to :categoria_terminal, :foreign_key => "nIdCategoria"
    has_many :pedidos_movil, :foreign_key => "nCodModelo"
    
    ransack_alias :modelos_terminal, :cMarca_or_cModelo_or_cModeloFabricante_or_cSO_or_cCaracteristicas_or_nPulgadas

    validates :cMarca, presence: true
    validates :cModelo, presence: true
    validates :nIdCategoria, presence: true
    validates :nTipoSIM, presence: true
    validates :bDisponibilidad, presence: true
    validates :bVigente, presence: true
    validates :cTipo, presence: true

    def BusquedaModeloGoogle
        "https://www.google.es/imghp?hl=es&tab=wi&q= #{cMarca} #{cModelo}"       
    end
end
