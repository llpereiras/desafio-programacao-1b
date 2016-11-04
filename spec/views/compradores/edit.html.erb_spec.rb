require 'rails_helper'

RSpec.describe "compradores/edit", type: :view do
  before(:each) do
    @comprador = assign(:comprador, Comprador.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit comprador form" do
    render

    assert_select "form[action=?][method=?]", comprador_path(@comprador), "post" do

      assert_select "input#comprador_nome[name=?]", "comprador[nome]"
    end
  end
end
