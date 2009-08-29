require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PerfilsController do
  before(:all) do
    @perfil = Perfil.new(:id => 1, :login => 'admin', :senha => 'teste123', :nome => "Administrador")
  end  
  
  it "deve mostrar o usuário passado como parâmetro" do
    controller.should_receive(:login_required).and_return(true)
    Perfil.should_receive(:find).with("1").and_return(@perfil)
    get(:show, :id => "1")
    response.should be_success
  end

end
