Rails.application.routes.draw do
  root to: 'home#index'
  
  devise_for :trainers
  resources :trainers

  resources :pokemons, only:[:new, :create]

  patch "pokemons/:id/capture", to: "pokemons#capture", as: :capture
  patch "pokemons/:id/damage", to: "pokemons#damage", as: :damage

  # get "pokemons/new", to: "pokemons#new"
  # get "pokemons/:id", to: "pokemons#show", as :pokemon
  # post "pokemons", to: "pokemons#create"
end