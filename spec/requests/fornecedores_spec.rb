require 'rails_helper'

RSpec.describe "Fornecedores", type: :request do
  describe "GET /fornecedores" do
    it "works! (now write some real specs)" do
      get fornecedores_path
      expect(response).to have_http_status(200)
    end
  end
end
