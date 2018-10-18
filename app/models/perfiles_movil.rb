class PerfilesMovil < ApplicationRecord

    self.table_name ="geslico.dbo.TPerfilesMovil"
    self.primary_key="cPerfil"
    
    has_many :lin_moviles, :foreign_key => "cPerfil", :primary_key => "cPerfil"
    has_many :lin_moviles, :foreign_key => "cPerfilAutorizado", :primary_key => "cPerfil"

end