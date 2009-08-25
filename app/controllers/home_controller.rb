class HomeController < ApplicationController
  
  def index
    render :layout => false
  end

  def login
    
    perfil = Perfil.validar(params[:login], params[:senha])
    if perfil
       session[:user] = perfil
       redirect_to_stored
    else
       flash[:notice] = "Login/senha inválidos."
       redirect_to :action => "index", :layout => false
    end
     
  end

end
