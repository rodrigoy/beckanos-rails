require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PerfilsController do

  it "deve mostrar o usuário passado como parâmetro" do
    controller.should_receive(:login_required).and_return(true)
    get(:controller => 'perfils', :action => 'show', :id => "1")
    response.should be_success
  end

end
