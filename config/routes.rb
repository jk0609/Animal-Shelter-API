Rails.application.routes.draw do
  root 'pets#index'
  resources :pets
  get '/random', to:'pets#random'
  get '/search', to:'pets#search'

end
