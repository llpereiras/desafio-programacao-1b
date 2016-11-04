require 'rails_helper'

RSpec.describe "fornecedores/new", type: :view do
  before(:each) do
    assign(:fornecedor, Fornecedor.new(
      :nome => "MyString"
    ))
  end

  it "renders new fornecedor form" do
    render

    assert_select "form[action=?][method=?]", fornecedores_path, "post" do

      assert_select "input#fornecedor_nome[name=?]", "fornecedor[nome]"
    end
  end
end
