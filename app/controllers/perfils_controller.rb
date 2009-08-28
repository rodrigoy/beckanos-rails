class PerfilsController < ApplicationController
  #before_filter :login_required

  def show
    @perfil = Perfil.find(params[:id])
  end

end
