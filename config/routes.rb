Rails.application.routes.draw do
  root 'pets#index'
  resources :pets
  get '/random', to:'pets#random'
end
