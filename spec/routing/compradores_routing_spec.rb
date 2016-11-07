require "rails_helper"

RSpec.describe CompradoresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/compradores").to route_to("compradores#index")
    end

  end
end
