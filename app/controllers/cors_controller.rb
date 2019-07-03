class CorsController < ApplicationController
  before_action :set_cor, only: [:show, :update, :destroy]

  # GET /cors
  def index
    @cors = Cor.all

    render json: @cors
  end

  # GET /cors/1
  def show
    render json: @cor
  end

  # POST /cors
  def create
    @cor = Cor.new(cor_params)

    if @cor.save
      render json: @cor, status: :created, location: @cor
    else
      render json: @cor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cors/1
  def update
    if @cor.update(cor_params)
      render json: @cor
    else
      render json: @cor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cors/1
  def destroy
    @cor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cor
      @cor = Cor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cor_params
      params.require(:cor).permit(:nome)
    end
end
