class VpnVlan < ApplicationRecord

	self.table_name ="geslico.dbo.TVPNVLan"
    self.primary_keys = :nIdVPN,:nIdVLan

    has_many	:lin_datos_vpn_vlan, :foreign_key => [:nIdVPN, :nIdVLan]
    has_many	:lin_dato, through: :lin_datos_vpn_vlan, :foreign_key => "nCodLinDatos"
	
end