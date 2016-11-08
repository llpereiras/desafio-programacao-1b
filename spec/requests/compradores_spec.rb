require 'rails_helper'

RSpec.describe "Compradores", type: :request do
  describe "GET /compradores" do
    it "works! (now write some real specs)" do
      get compradores_path
      expect(response).to have_http_status(200)
    end
  end
end
