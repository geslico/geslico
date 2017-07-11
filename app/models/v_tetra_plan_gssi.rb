class VTetraPlanGssi < ApplicationRecord
	self.table_name ="geslico.dbo.VTetraPlanGSSIs"

	def self.to_csv
	    attributes = %w{nGSSIInicio nGSSIFin cFlota nDefinidos nActivos nActividadSemana nActividadMes nActividadSemestre }

	    CSV.generate(headers: true) do |csv|
	      csv <<  ['Inicio; Fin; Servicio; Definidos; Activos; Activos última semana; Activos último mes; Activos últimos 6 meses']

	      all.each do |sede|
	        csv << attributes.map{ |attr| sede.send(attr) }
	      end
	    end.encode('iso-8859-1')
	  end
end

