# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  def login_required
    if session[:user]
      return true
    end
    flash[:warning] = 'Efetue seu login para continuar...'
    session[:return_to] = request.request_uri
    redirect_to :controller => 'home'
    return false 
  end

  def current_user
    session[:user]
  end

  def redirect_to_stored
    if return_to = session[:return_to]
      session[:return_to] = nil
      redirect_to (return_to)
    else
      redirect_to(:controller => 'perfils', :action => 'show', :id => session[:user].id)
    end
  end

end
