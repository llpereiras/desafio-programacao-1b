class CompradoresController < ApplicationController
  before_action :set_comprador, only: [:show, :edit, :update, :destroy]

  # GET /compradores
  # GET /compradores.json
  def index
    @compradores = Comprador.all
  end

  # GET /compradores/1
  # GET /compradores/1.json
  def show
  end

  # GET /compradores/new
  def new
    @comprador = Comprador.new
  end

  # GET /compradores/1/edit
  def edit
  end

  # POST /compradores
  # POST /compradores.json
  def create
    @comprador = Comprador.new(comprador_params)

    respond_to do |format|
      if @comprador.save
        format.html { redirect_to @comprador, notice: 'Comprador was successfully created.' }
        format.json { render :show, status: :created, location: @comprador }
      else
        format.html { render :new }
        format.json { render json: @comprador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compradores/1
  # PATCH/PUT /compradores/1.json
  def update
    respond_to do |format|
      if @comprador.update(comprador_params)
        format.html { redirect_to @comprador, notice: 'Comprador was successfully updated.' }
        format.json { render :show, status: :ok, location: @comprador }
      else
        format.html { render :edit }
        format.json { render json: @comprador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compradores/1
  # DELETE /compradores/1.json
  def destroy
    @comprador.destroy
    respond_to do |format|
      format.html { redirect_to compradores_url, notice: 'Comprador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comprador
      @comprador = Comprador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comprador_params
      params.require(:comprador).permit(:nome)
    end
end
