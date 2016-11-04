require 'rails_helper'

RSpec.describe "vendas/show", type: :view do
  before(:each) do
    @venda = assign(:venda, Venda.create!(
      :cliente => nil,
      :fornecedor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
