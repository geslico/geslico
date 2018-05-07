class LinDato < ApplicationRecord

	self.table_name ="geslico.dbo.TLinDatos"

	belongs_to :tipo_lin_dato, :foreign_key => "nCodTipDatos"	
	belongs_to :linea, :foreign_key => "nCodLinDatos", :primary_key => "nLinea"	
	has_one :sedeA, :foreign_key => "nCodSede", :primary_key => "nCodSedeA"	
	has_one :sedeB, :foreign_key => "nCodSede", :primary_key => "nCodSedeB"	
	has_one :lin_fijo, :foreign_key => "nLinea" , :primary_key => "nLinea"	
	
	has_many	:lin_datos_vpn_vlan, :foreign_key => "nCodLinDatos" 
	has_many	:vpn_vlan, through: :lin_datos_vpn_vlan, :foreign_key => [:nIdVPN, :nIdVLan]

	ransack_alias :lin_dato, :nCodLinDatos_or_nCodTipDatos_or_nCodSedeA_or_nCodSedeB
	

	def self.insertarVPNLan(idLinDatos,idVlanVPN,usuario)
		
		t = Time.now 
		t = t.strftime("%Y/%m/%d %H:%M:%S")
		
		idVlan = idVlanVPN.rpartition('-').first
		idVPN = idVlanVPN.rpartition('-').last
		result=ActiveRecord::Base.connection.select_all("INSERT INTO TLinDatosVPNVLan (nCodLinDatos, nIdVLan, nIdVPN, cUsuarioAlta, dFchAlta) VALUES (#{idLinDatos},#{idVlan},#{idVPN},'#{usuario}','#{t}')")

		if result.present?
			return result
		else
			return nil
		end
		
	end

end