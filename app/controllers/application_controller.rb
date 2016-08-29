class ApplicationController < ActionController::Base

	#lvd001-Control de login en toda la aplicación, si el usuario no se 
	#ha validado se invoca la pagina de login para que lo haga 
	before_action :require_login
	

	protect_from_forgery with: :exception
	include SessionsHelper

	private

		def require_login
		unless logged_in?
			flash[:error] = "Debe iniciar sesión"
			redirect_to login_url 
		end
	end

end
