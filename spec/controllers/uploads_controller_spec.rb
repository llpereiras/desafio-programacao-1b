require 'rails_helper'

RSpec.describe UploadsController, type: :controller do

  before(:each) do
    DatabaseCleaner.strategy = :truncation
    criar_upload
  end
  let(:criar_upload) { @upload = FactoryGirl.create(:upload) }

  describe "GET #index" do
    it "verifica lista de uploads" do
      get :index
      expect(assigns(:uploads)).to eq([@upload])
    end
  end

  describe "GET #show" do
    it "verifica upload cadastrado" do
      get :show, id: @upload
      expect(assigns(:total_importacao)).to eq(4)
    end
  end

end
