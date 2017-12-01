
class TInforme < ApplicationRecord

	#Nombre de tabla mapeada
	self.table_name ="geslico.dbo.TInformesSQL"

    def self.execute_statement(sql)
        result = ActiveRecord::Base.connection.select_rows(sql)
        if result.present?
            return result
        else
            return nil
        end
    end

    def self.to_csv(data)
        data = data.to_a
        CSV.open("informe.csv", "w") do |csv|
            data.each do |row|
                csv << row
            end
        end
    end    
end
