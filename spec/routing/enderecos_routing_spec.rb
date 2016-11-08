require "rails_helper"

RSpec.describe EnderecosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/enderecos").to route_to("enderecos#index")
    end
  end
end
