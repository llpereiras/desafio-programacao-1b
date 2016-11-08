require 'rails_helper'

RSpec.describe Endereco, type: :model do

  before(:each) do
    DatabaseCleaner.strategy = :truncation
    @comprador = FactoryGirl.create(:comprador)
  end

  let(:atributos_validos) { {logradouro: Faker::Lorem.words(3), comprador: @comprador }}
  let(:atributos_nao_validos) { {logradouro: ''}}

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
