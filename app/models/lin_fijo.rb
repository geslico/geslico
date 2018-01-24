
class LinFijo < ApplicationRecord

    self.table_name ="geslico.dbo.TLinFijos"
    self.primary_key="nLinea"
    
    has_one :lin_dato, :foreign_key => "nLinea", :primary_key => "nLinea"	

end