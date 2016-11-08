class CompradoresController < ApplicationController
  before_action :set_comprador, only: [:show, :edit, :update, :destroy]

  # GET /compradores
  # GET /compradores.json
  def index
    @compradores = Comprador.all
  end
end
