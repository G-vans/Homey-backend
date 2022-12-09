Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "properties#index"
  resources :properties, only: [:index, :show, :create, :update, :destroy]
  resources :reviews, only: [:index, :show, :create, :destroy]
  
  # get users 
  get '/users', to: 'users#index'

  # Authentication
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # Creating Account && staying authenticated
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
end
