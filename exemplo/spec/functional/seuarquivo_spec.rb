#coding: utf-8
#include RSpec::Expectations

describe "Cadastro" do

##########################################################
../nomedoprojeto/spec/funcionais/seuarquivo_spec.rb
##########################################################

  before(:each) do
  end

  after(:each) do
  end

  it "Cadastrar clientes", :nometag1 => true, :nometag2 => true do
    @cadastro.abrir_site
    @cadastro.selecionar_link
    @cadastro.preencher_dados
    @cadastro.finalizar_dados
    @cadastro.validar_msg_sucesso
    @cadastro.logoff
  end
end