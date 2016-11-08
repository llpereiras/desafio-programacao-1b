require 'rails_helper'

RSpec.describe VendasController, type: :controller do

  before(:each) do
    DatabaseCleaner.strategy = :truncation
    criar_upload
  end
  let(:criar_upload) { @upload = FactoryGirl.create(:upload) }

  describe "GET #index" do
    it "verifica lista de uploads" do
      get :index, upload_id: @upload.id
      expect(assigns(:vendas)).to have(4).items
    end
  end

end
