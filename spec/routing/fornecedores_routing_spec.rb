require "rails_helper"

RSpec.describe FornecedoresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fornecedores").to route_to("fornecedores#index")
    end

    it "routes to #new" do
      expect(:get => "/fornecedores/new").to route_to("fornecedores#new")
    end

    it "routes to #show" do
      expect(:get => "/fornecedores/1").to route_to("fornecedores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fornecedores/1/edit").to route_to("fornecedores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fornecedores").to route_to("fornecedores#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fornecedores/1").to route_to("fornecedores#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fornecedores/1").to route_to("fornecedores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fornecedores/1").to route_to("fornecedores#destroy", :id => "1")
    end

  end
end
