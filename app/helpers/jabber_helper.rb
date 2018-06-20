module JabberHelper

    def tel_to(phone, size)        
        link_to content_tag(:i, "", :class => "fi fi-telephone #{size} icon") , "tel:#{phone}"
    end

    def ciscotel_to(phone, size)        
        link_to content_tag(:i, "", :class => "fi fi-telephone #{size} icon") , "ciscotel:#{phone}"
    end

    def clicktocallwithedit_to(phone, size)        
        link_to content_tag(:i, "", :class => "fi fi-telephone-accessible #{size} icon") , "clicktocallwithedit:#{phone}"
    end
    
    def im_to(contact, size)        
        link_to content_tag(:i, "", :class => "fi fi-comments #{size} icon") , "im:#{contact}"
    end

    def ciscoim_to(contact, size)        
        link_to content_tag(:i, "", :class => "fi fi-comments #{size} icon") , "ciscoim:#{contact}"
    end

end
