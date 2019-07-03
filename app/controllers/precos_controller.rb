class PrecosController < ApplicationController
  before_action :set_preco, only: [:show, :update, :destroy]

  # GET /precos
  def index
    @precos = Preco.all

    render json: @precos
  end

  # GET /precos/1
  def show
    render json: @preco
  end

  # POST /precos
  def create
    @preco = Preco.new(preco_params)

    if @preco.save
      render json: @preco, status: :created, location: @preco
    else
      render json: @preco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /precos/1
  def update
    if @preco.update(preco_params)
      render json: @preco
    else
      render json: @preco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /precos/1
  def destroy
    @preco.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preco
      @preco = Preco.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def preco_params
      params.require(:preco).permit(:valor)
    end
end
