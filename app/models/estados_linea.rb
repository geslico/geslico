class EstadosLinea < ApplicationRecord

    self.table_name ="geslico.dbo.TEstadosLinea"
    self.primary_key="nCodEstLin"
    
    has_many :lineas, :foreign_key => "nCodEstLin"

    scope :EstadosDatos,     -> { where("cCodTipLinea is null")}
    scope :EstadosFijos,     -> { where("cCodTipLinea is null OR cCodTipLinea =1 ")}
    scope :EstadosMoviles,   -> { where("cCodTipLinea is null OR cCodTipLinea =2 ")}
    
end