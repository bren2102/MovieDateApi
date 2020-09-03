Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/movies/:name',   to:'movies#show'
  get '/movies',         to:'movies#index'
  resources :cities
  resources :appointments
end
