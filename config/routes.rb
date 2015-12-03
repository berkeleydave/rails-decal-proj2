Rails.application.routes.draw do
  get 'pois/new'

  root to: 'home#index'
  
  
  devise_for :users
  resources :users

  resources :users
  resources :groups

  post "groups", to: "groups#create"

  patch "groups/:id/join", to: "groups#join", as :join

  # patch "pokemons/:id/capture", to: "pokemons#capture", as: :capture
  # patch "pokemons/:id/damage", to: "pokemons#damage", as: :damage
end
