require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe HomeController do

  before(:all) do
    @perfil = Perfil.create(:login => 'admin', :senha => 'teste123', :nome => "Administrador")
  end  

  it "deve voltar pra home caso login invalido" do
    Perfil.should_receive(:validar).with("teste1", "senhainvalida").and_return(false)
    post :login, :login =>"teste1", :senha => "senhainvalida"
    response.should redirect_to(:action => "index")
  end
  
  it "deve redirecionar pra perfil caso login valido" do
    Perfil.should_receive(:validar).with('teste1', "valida").and_return(@perfil)
    post :login, :login => 'teste1', :senha => "valida"
    response.should redirect_to(:controller => 'perfils', :action => 'show', :id => @perfil.id)
  end

end
