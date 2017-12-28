class UsuariosPrograma < ApplicationRecord

	self.table_name ="geslico.dbo.TUsuariosProgramas"
	self.primary_key = "id"

	belongs_to :usuario , :foreign_key => "nIdUsuario"
	belongs_to :programa , :foreign_key => "nCodPrograma"
	
	accepts_nested_attributes_for :programa
end
