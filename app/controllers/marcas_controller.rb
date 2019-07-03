class MarcasController < ApplicationController
  before_action :set_marca, only: [:show, :update, :destroy]

  # GET /marcas
  def index
    @marcas = Marca.all

    render json: @marcas
  end

  # GET /marcas/1
  def show
    render json: @marca
  end

  # POST /marcas
  def create
    @marca = Marca.new(marca_params)

    if @marca.save
      render json: @marca, status: :created, location: @marca
    else
      render json: @marca.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /marcas/1
  def update
    if @marca.update(marca_params)
      render json: @marca
    else
      render json: @marca.errors, status: :unprocessable_entity
    end
  end

  # DELETE /marcas/1
  def destroy
    @marca.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca
      @marca = Marca.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def marca_params
      params.require(:marca).permit(:descricao)
    end
end
