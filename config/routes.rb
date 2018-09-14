Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
	resources :dishes, only: [:index, :show] do
      get '/restaurants', to: 'dishes#restaurants'
	end

	resources :restaurants, only: [:index, :show] do
	  get '/dishes', to: 'restaurants#dishes'
	end
  end
end
