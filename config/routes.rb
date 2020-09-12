Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/movies/:name',   to:'movies#show'
  get '/movies',         to:'movies#index'
  get '/users/:name',   to:'users#show'
  get '/users',         to:'users#index'
  post '/user/login',         to:'users#login'
  get '/user/create',         to:'users#create'
  get '/tickets/:username',  to:'appointments#index'
  post '/ticket/create', to:'appointments#create'
  resources :cities
end
