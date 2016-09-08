class TPrograma < ActiveRecord::Base
	
	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TProgramas"
	
	#Relación con TUsuariosProgramas
	has_many	:TUsuariosPrograma, :foreign_key => "nCodPrograma"
	has_many	:TUsuario, through: :TUsuariosPrograma, :foreign_key => "nIdUsuario"

end
