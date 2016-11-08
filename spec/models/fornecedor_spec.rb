require 'rails_helper'

RSpec.describe Fornecedor, type: :model do

  before(:each) do
    DatabaseCleaner.strategy = :truncation
  end

  let(:atributos_validos) { {nome: Faker::Lorem.words(2)}}
  let(:atributos_nao_validos) { {nome: ''}}

  describe "Tentar criar fornecedor" do
    it " com um nome qualquer" do
      fornecedor = Fornecedor.create(atributos_validos)
      expect(fornecedor.save).to be(true)
    end

    it " sem um nome" do
      fornecedor = Fornecedor.create(atributos_nao_validos)
      expect(fornecedor.save).to be(false)
    end
  end

end
