class TPrograma < ApplicationRecord
	
	self.table_name ="geslico.dbo.TProgramasSFG"
	
	has_many	:t_usuarios_programas, :foreign_key => "nCodPrograma"
	has_many	:t_usuarios, through: :t_usuarios_programas, :foreign_key => "nIdUsuario"

end
