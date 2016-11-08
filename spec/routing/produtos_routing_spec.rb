require "rails_helper"

RSpec.describe ProdutosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/produtos").to route_to("produtos#index")
    end
  end
end
