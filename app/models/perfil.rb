class Perfil < ActiveRecord::Base
  validates_presence_of :login, :senha, :nome

  def self.validar(login, senha)
    find(:first, :conditions => ["login = ? and senha = ?" , login, senha])
  end
  
  def idade
    57
  end

end
