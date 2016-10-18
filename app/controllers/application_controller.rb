class ApplicationController < ActionController::Base

	before_action :set_locale	
	before_action :require_login # lvd001-Control de login en toda la aplicación, si el usuario no se ha validado se invoca la pagina de login para que lo haga 
	
	include CanCan::ControllerAdditions

	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end

	def default_url_options(options={})
	  { locale: I18n.locale }
	end

	protect_from_forgery with: :exception
	include SessionsHelper

	private

	def require_login
	unless logged_in?
			flash[:danger] = "Debe iniciar sesión"
			redirect_to login_url 
		end
	end 

  	rescue_from CanCan::AccessDenied do |exception|
    	redirect_to root_url, :alert => exception.message
  	end
end
