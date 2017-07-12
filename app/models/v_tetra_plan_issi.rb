class VTetraPlanIssi < ApplicationRecord
	self.table_name ="geslico.dbo.VTetraPlanISSIs"	



	def self.to_csv
	    attributes = %w{nISSIInicio nISSIFin cFlota cTipo nCountISSI nCountISSICnnY nCountISSICnnY6M nCountISSICnnN }

	    CSV.generate(headers: true) do |csv|
	      csv <<  ['Inicio; Fin; Servicio; Tipo; ISSI Ocupados; ISSI Conectados; ISSI vistos ultimos 6 meses; ISSI Nunca Conectados']

	      all.each do |sede|
	        csv << attributes.map{ |attr| sede.send(attr) }
	      end
	    end.encode('iso-8859-1')
	  end

end
