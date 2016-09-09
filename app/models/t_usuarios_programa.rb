class TUsuariosPrograma < ActiveRecord::Base

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TUsuariosProgramas"

	TUsuario.select("TUsuariosPrograma.nIdUsuario, TUsuariosPrograma.nCodPrograma, 
					TUsuariosPrograma.sPermiso, TProgramas.sPrograma")

	#Relación con TUsuarios y TProgramas  
	belongs_to :TUsuario , :foreign_key => "nIdUsuario"
	belongs_to :TPrograma , :foreign_key => "nCodPrograma"

end
