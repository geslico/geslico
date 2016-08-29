class SessionsController < ApplicationController

  def new
  end

  def create
  
	 t_usuario = TUsuario.find_by(cCodUsuario: params[:session][:cCodUsuario].downcase)
    if t_usuario && t_usuario.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in t_usuario
      redirect_to '/main'

    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
