require 'rails_helper'

RSpec.describe "fornecedores/show", type: :view do
  before(:each) do
    @fornecedor = assign(:fornecedor, Fornecedor.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
