require 'rails_helper'

RSpec.describe "enderecos/edit", type: :view do
  before(:each) do
    @endereco = assign(:endereco, Endereco.create!(
      :cliente => nil
    ))
  end

  it "renders the edit endereco form" do
    render

    assert_select "form[action=?][method=?]", endereco_path(@endereco), "post" do

      assert_select "input#endereco_cliente_id[name=?]", "endereco[cliente_id]"
    end
  end
end
