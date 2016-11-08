require "rails_helper"

RSpec.describe VendasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vendas").to route_to("vendas#index")
    end

  end
end
