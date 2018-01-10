class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    if !user.nil?
    user ||= User.new # guest user (not logged in)
    
    
        alias_action :create, :read, :update, :to => :cru
        
        user.usuarios_programas.each do |p|
            
            # Mientras estemos en fase de desarrollo hemos añadido "rescue nil", así evitamos que dé 
            # error al incluir un modelo nuevo en la tabla TProgramas sin haber creado previamente su clase
            if !p.programa.sModelos.nil?
                if p.sPermiso=="L"            
                    can :read, p.programa.sModelos.split(",").map { |s| s.constantize rescue nil}  
                elsif p.sPermiso=="W"                                
                    can :cru, p.programa.sModelos.split(",").map { |s| s.constantize rescue nil }  
                elsif p.sPermiso=="N"                
                    cannot :read, p.programa.sModelos.split(",").map { |s| s.constantize rescue nil}
                end        
            end
        end 
    end
  end
end 
