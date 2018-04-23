
class SedeAdjunto < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TSedesAdjuntos"
	self.primary_keys = :nIdRuta,:nCodSede

	has_many :ruta_adjuntos, :foreign_key => "nId", :primary_key => "nIdRuta"
	
	def self.fotos (nCodSede, rutas)
		self.joins(:ruta_adjuntos)		
		.select("nIdRuta, cRuta, cNombresFichero")		
		.where("nCodSede = #{nCodSede} and nId in (#{rutas.join(",")})")	
		.order("nIdRuta")	
	end

end
