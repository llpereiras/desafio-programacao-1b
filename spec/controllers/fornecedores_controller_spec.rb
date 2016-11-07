require 'rails_helper'

RSpec.describe FornecedoresController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.create(:fornecedor)
  }

  describe "GET #index" do
    it "assigns all fornecedores as @fornecedores" do
      valid_attributes
      get :index
      expect(assigns(:fornecedores)).to eq(Fornecedor.all)
    end
  end

end
