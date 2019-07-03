class CarrosController < ApplicationController
  before_action :set_carro, only: [:show, :update, :destroy]

  # GET /carros
  def index
    @carros = Carro.all

    render json: @carros
  end

  # GET /carros/1
  def show
    render json: @carro
  end

  # POST /carros
  def create
    @carro = Carro.new(carro_params)

    if @carro.save
      render json: @carro, status: :created, location: @carro
    else
      render json: @carro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carros/1
  def update
    if @carro.update(carro_params)
      render json: @carro
    else
      render json: @carro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carros/1
  def destroy
    @carro.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro
      @carro = Carro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def carro_params
      params.require(:carro).permit(:placa, :classe_id, :marca_id, :cor_id, :preco_id)
    end
end
