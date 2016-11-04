require 'rails_helper'

RSpec.describe "compradores/new", type: :view do
  before(:each) do
    assign(:comprador, Comprador.new(
      :nome => "MyString"
    ))
  end

  it "renders new comprador form" do
    render

    assert_select "form[action=?][method=?]", compradores_path, "post" do

      assert_select "input#comprador_nome[name=?]", "comprador[nome]"
    end
  end
end
