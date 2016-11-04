require 'rails_helper'

RSpec.describe "fornecedores/index", type: :view do
  before(:each) do
    assign(:fornecedores, [
      Fornecedor.create!(
        :nome => "Nome"
      ),
      Fornecedor.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of fornecedores" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
