namespace :seeder do

  desc "Genera ficheros de semillas para los entornos de Ruby"

  task unidades: :environment do
  	TUnidad.order(:nCodUni).all.each do |unidad|
 		puts "TUnidad.create(#{unidad.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include? (key)}.to_s.gsub(/[{}]/,'')})"
	end
  end

  task programas: :environment do
  	Programa.order(:nCodPrograma).all.each do |programa|
 		puts "Programa.create(#{programa.serializable_hash.delete_if {|key, value| ['created_at','updated_at'].include? (key)}.to_s.gsub(/[{}]/,'')})"
	end
  end

end
