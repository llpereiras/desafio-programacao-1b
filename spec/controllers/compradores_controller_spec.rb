require 'rails_helper'

RSpec.describe CompradoresController, type: :controller do

  let(:valid_attributes) {
    {nome: 'Teste rspec'}
  }

  describe "GET #index" do
    it "assigns all compradores as @compradores" do
      comprador = Comprador.create! valid_attributes
      get :index
      expect(assigns(:compradores)).to eq([comprador])
    end
  end

end
