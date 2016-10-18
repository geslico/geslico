class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    
    alias_action :create, :read, :update, :to => :cru
    
    user.TUsuariosPrograma.each do |p|
        
        if !p.TPrograma.sModelos.nil?
            if p.sPermiso=="L"            
                can :read, p.TPrograma.sModelos.split(",").map { |s| s.constantize }
            elsif p.sPermiso=="W"                                
                can :cru, p.TPrograma.sModelos.split(",").map { |s| s.constantize }
            elsif p.sPermiso=="N"                
                cannot :read, p.TPrograma.sModelos.split(",").map { |s| s.constantize }
            end        
        end
    end 
    
  end
end
