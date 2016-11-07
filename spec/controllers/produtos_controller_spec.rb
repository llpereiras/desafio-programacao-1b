require 'rails_helper'

RSpec.describe ProdutosController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.create(:produto)
  }

  describe "GET #index" do
    it "assigns all produtos as @produtos" do
      valid_attributes
      get :index
      expect(assigns(:produtos)).to eq(Produto.all)
    end
  end

end
