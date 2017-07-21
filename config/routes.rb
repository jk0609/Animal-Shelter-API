Rails.application.routes.draw do
  resources :pets
  get '/pets/random', to:'pets#random'
end
