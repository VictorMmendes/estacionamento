module Api
	module V1
		class CarrosController < ApplicationController
			def index
				array = [ 
					Carro.all,
					Cor.all,
					Marca.all,
					Classe.all,
					Preco.all
				]
				render json: {status: 'SUCCESS', message:'Carros carregados', data:array},status: :ok
			end

			def show
				carro = Carro.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded article', data:carro},status: :ok
			end

			def create
				carro = Carro.new(carro_params)
				if carro.save
					render json: {status: 'SUCCESS', message:'Saved carro', data:carro},status: :ok
				else
					render json: {status: 'ERROR', message:'carro not saved', data:carro.errors},status: :unprocessable_entity
				end
			end

			private
			def carro_params
				params.permit(:placa, :classe_id, :marca_id, :cor_id, :preco_id)
			end
		end
	end
end