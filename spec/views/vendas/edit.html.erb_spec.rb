require 'rails_helper'

RSpec.describe "vendas/edit", type: :view do
  before(:each) do
    @venda = assign(:venda, Venda.create!(
      :cliente => nil,
      :fornecedor => nil
    ))
  end

  it "renders the edit venda form" do
    render

    assert_select "form[action=?][method=?]", venda_path(@venda), "post" do

      assert_select "input#venda_cliente_id[name=?]", "venda[cliente_id]"

      assert_select "input#venda_fornecedor_id[name=?]", "venda[fornecedor_id]"
    end
  end
end
