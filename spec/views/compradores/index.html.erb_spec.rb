require 'rails_helper'

RSpec.describe "compradores/index", type: :view do
  before(:each) do
    assign(:compradores, [
      Comprador.create!(
        :nome => "Nome"
      ),
      Comprador.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of compradores" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
