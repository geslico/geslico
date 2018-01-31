class LinDatosVpnVlan < ApplicationRecord

	self.table_name ="geslico.dbo.TLinDatosVPNVLan"
	self.primary_keys = :nCodLinDatos,:nIdVPN,:nIdVLan
	
	belongs_to :lin_dato , :foreign_key => "nCodLinDatos"
	belongs_to :vpn_vlan , :foreign_key => [:nIdVPN, :nIdVLan]
	
	scope :cabecera, ->(nLinea) {where(:nCodLinDatos => nLinea)}

end