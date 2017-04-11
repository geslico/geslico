class TUsuariosPrograma < ApplicationRecord

	self.table_name ="geslico.dbo.TUsuariosProgramas"
	self.primary_key = "id"

	belongs_to :t_usuario , :foreign_key => "nIdUsuario"
	belongs_to :t_programa , :foreign_key => "nCodPrograma"
	
	accepts_nested_attributes_for :t_programa
end
