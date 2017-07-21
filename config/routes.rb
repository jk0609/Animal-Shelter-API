Rails.application.routes.draw do
  resources :pets
  get '/random', to:'pets#random'
end
