require 'rails_helper'

RSpec.describe "enderecos/index", type: :view do
  before(:each) do
    assign(:enderecos, [
      Endereco.create!(
        :cliente => nil
      ),
      Endereco.create!(
        :cliente => nil
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
