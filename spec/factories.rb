FactoryGirl.define do
  factory :t_unidad do
    
  end
   
   factory :Usuario, :class => TUsuario do        
       cCodUsuario 'user000'
       cNombre 'Usuario Test'
   end 
end