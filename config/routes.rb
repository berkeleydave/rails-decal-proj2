Rails.application.routes.draw do
  get 'pois/new'

  root to: 'home#index'


  devise_for :users

  resources :users
  resources :groups

  post "groups", to: "groups#create"

  get "users/:id", to: "users#show"

  patch "groups/:id", to: "groups#update"
  delete "groups/:id", to: "groups#destroy"

end
