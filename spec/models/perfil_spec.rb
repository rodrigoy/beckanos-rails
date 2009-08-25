require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Perfil do
  before(:all) do
    Perfil.create(:login => 'teste1', :senha => 'senhasup', :nome => 'José Maria')
    @perfil = Perfil.new
  end

  it "deve ter login/senha/nome" do
    @perfil.should be_invalid
    
    @perfil.login = "teste2"
    @perfil.should be_invalid
    
    @perfil.senha = "senha123"
    @perfil.should be_invalid
    
    @perfil.nome = "Teste da Silva"
    @perfil.should be_valid
  end
  
  it "deve salvar" do 
    @perfil.save.should be_true
  end
  
  it "deve validar usuario/senha incorretos" do
    Perfil.validar('teste1', 'senha321').should == nil
  end
  
  it "deve validar usuario/senha corretos" do
    Perfil.validar('teste1', 'senhasup').should be_true
  end
  
end
