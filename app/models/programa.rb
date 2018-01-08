class Programa < ApplicationRecord
	
	self.table_name ="geslico.dbo.TProgramas"	
	#self.table_name ="geslico.dbo.TProgramasLVD"
	self.primary_key="nCodPrograma"

	has_many	:usuarios_programas, :foreign_key => "nCodPrograma"
	has_many	:usuarios, through: :usuarios_programas, :foreign_key => "nIdUsuario"

end
