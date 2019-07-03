Rails.application.routes.draw do
  # resources :carros
  # resources :precos
  # resources :classes
  # resources :marcas
  # resources :cors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	namespace 'api' do
	  	namespace 'v1' do
	  		resources :carros
	  	end
	end

end
