require 'rails_helper'

RSpec.describe "compradores/show", type: :view do
  before(:each) do
    @comprador = assign(:comprador, Comprador.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
