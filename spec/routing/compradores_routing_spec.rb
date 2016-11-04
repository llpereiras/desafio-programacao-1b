require "rails_helper"

RSpec.describe CompradoresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/compradores").to route_to("compradores#index")
    end

    it "routes to #new" do
      expect(:get => "/compradores/new").to route_to("compradores#new")
    end

    it "routes to #show" do
      expect(:get => "/compradores/1").to route_to("compradores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/compradores/1/edit").to route_to("compradores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/compradores").to route_to("compradores#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/compradores/1").to route_to("compradores#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/compradores/1").to route_to("compradores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/compradores/1").to route_to("compradores#destroy", :id => "1")
    end

  end
end
