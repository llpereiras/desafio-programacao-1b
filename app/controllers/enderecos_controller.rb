class EnderecosController < ApplicationController
  before_action :set_endereco, only: [:show, :edit, :update, :destroy]

  # GET /enderecos
  # GET /enderecos.json
  def index
    @enderecos = Endereco.all
  end

end
