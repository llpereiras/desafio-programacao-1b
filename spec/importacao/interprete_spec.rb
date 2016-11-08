require 'rails_helper'

RSpec.describe ::Importacao::Interprete do

  before(:each) do
    DatabaseCleaner.strategy = :truncation
    criar_upload
  end

  let(:criar_upload) {
    @upload = FactoryGirl.create(:upload)
  }

  describe "Validar Interprete" do
    context "Verificar se o interprete esta processando o arquivo corretamente" do
      it "Verifica se retorna status 200 com a mensagem de sucesso" do
        retorno = ::Importacao::Interprete.processar_arquivo(@upload)
        retorno_esperado = {message: "Arquivo processado com sucesso", status: 200}
        expect(retorno).to eq(retorno_esperado)
      end

      it "Verifica se foram cadastrados 4 compradores" do
        expect(Comprador.all).to have(4).items
      end

      it "Verifica se foram cadastrados 3 fornecedores" do
        expect(Fornecedor.all).to have(3).items
      end

      it "Verifica se foram cadastrados 3 produtos" do
        expect(Produto.all).to have(3).items
      end

      it "Verifica se foram cadastrados 4 vendas pertencendo ao upload realizado" do
        expect have(Venda.where(upload: @upload)).items
      end

    end
  end

end
