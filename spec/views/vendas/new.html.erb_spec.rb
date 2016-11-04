require 'rails_helper'

RSpec.describe "vendas/new", type: :view do
  before(:each) do
    assign(:venda, Venda.new(
      :cliente => nil,
      :fornecedor => nil
    ))
  end

  it "renders new venda form" do
    render

    assert_select "form[action=?][method=?]", vendas_path, "post" do

      assert_select "input#venda_cliente_id[name=?]", "venda[cliente_id]"

      assert_select "input#venda_fornecedor_id[name=?]", "venda[fornecedor_id]"
    end
  end
end
