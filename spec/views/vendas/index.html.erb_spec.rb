require 'rails_helper'

RSpec.describe "vendas/index", type: :view do
  before(:each) do
    assign(:vendas, [
      Venda.create!(
        :cliente => nil,
        :fornecedor => nil
      ),
      Venda.create!(
        :cliente => nil,
        :fornecedor => nil
      )
    ])
  end

  it "renders a list of vendas" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
