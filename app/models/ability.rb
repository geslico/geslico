class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    if !user.nil?
    user ||= User.new # guest user (not logged in)
    
    
        alias_action :create, :read, :update, :to => :cru
        
        user.t_usuarios_programas.each do |p|
            
            if !p.t_programa.sModelos.nil?
                if p.sPermiso=="L"            
                    can :read, p.t_programa.sModelos.split(",").map { |s| s.constantize }
                elsif p.sPermiso=="W"                                
                    can :cru, p.t_programa.sModelos.split(",").map { |s| s.constantize }
                elsif p.sPermiso=="N"                
                    cannot :read, p.t_programa.sModelos.split(",").map { |s| s.constantize }
                end        
            end
        end 
    end
  end
end
