require 'rails_helper'

RSpec.describe Endereco, type: :model do

  before(:each) do
    DatabaseCleaner.strategy = :truncation
  end

  let(:atributos_validos) { {comprador: FactoryGirl.create(:comprador), logradouro: Faker::Lorem.words(3) }}
  let(:atributos_nao_validos) { {comprador: ''}}

  describe "Tentar criar endereco" do
    it " com um nome qualquer" do
      endereco = Endereco.create(atributos_validos)
      expect(endereco.save).to be(true)
    end

    it " sem um nome" do
      endereco = Endereco.create(atributos_nao_validos)
      expect(endereco.save).to be(false)
    end
  end

end
