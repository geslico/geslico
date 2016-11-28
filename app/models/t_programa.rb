class TPrograma < ActiveRecord::Base
	
	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TProgramas"
	
	#Relación con TUsuariosProgramas
	has_many	:t_usuarios_programas, :foreign_key => "nCodPrograma"
	has_many	:t_usuarios, through: :t_usuarios_programas, :foreign_key => "nIdUsuario"

end
