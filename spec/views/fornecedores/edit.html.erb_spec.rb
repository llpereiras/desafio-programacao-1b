require 'rails_helper'

RSpec.describe "fornecedores/edit", type: :view do
  before(:each) do
    @fornecedor = assign(:fornecedor, Fornecedor.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit fornecedor form" do
    render

    assert_select "form[action=?][method=?]", fornecedor_path(@fornecedor), "post" do

      assert_select "input#fornecedor_nome[name=?]", "fornecedor[nome]"
    end
  end
end
