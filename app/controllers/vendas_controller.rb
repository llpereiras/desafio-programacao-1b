class VendasController < ApplicationController
  before_action :set_venda, only: [:show, :edit, :update, :destroy]

  # GET /vendas
  # GET /vendas.json
  def index
    @vendas = Venda.all
  end
end
