class TipoLinDato < ApplicationRecord

	self.table_name ="geslico.dbo.TTipoLinDatos"

	has_many :lin_dato, :foreign_key => "nCodTipDatos", :primary_key => "nCodTipDatos"

end