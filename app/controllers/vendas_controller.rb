class VendasController < ApplicationController
  before_action :set_venda, only: [:show, :edit, :update, :destroy]

  # GET /vendas
  # GET /vendas.json
  def index
    @vendas = Venda.eager_load(:comprador, :fornecedor, :produto).where(upload: params[:upload_id])
  end
end
