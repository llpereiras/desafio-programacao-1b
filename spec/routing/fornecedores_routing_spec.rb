require "rails_helper"

RSpec.describe FornecedoresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fornecedores").to route_to("fornecedores#index")
    end

  end
end
