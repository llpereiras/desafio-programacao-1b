require 'rails_helper'

RSpec.describe Comprador, type: :model do

  before(:each) do
    DatabaseCleaner.strategy = :truncation
  end

  let(:atributos_validos) { {nome: Faker::Lorem.words(2)}}
  let(:atributos_nao_validos) { {nome: ''}}

  describe "Tentar criar comprador" do
    it " com um nome qualquer" do
      comprador = Comprador.create(atributos_validos)
      expect(comprador.save).to be(true)
    end

    it " sem um nome" do
      comprador = Comprador.create(atributos_nao_validos)
      expect(comprador.save).to be(false)
    end
  end

end
