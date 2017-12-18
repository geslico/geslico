module ApplicationHelper
	def current_url(new_params)				
   		url_for safe_params.merge(new_params)
   	end
end

