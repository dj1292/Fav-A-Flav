Rails.application.routes.draw do
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :plates, :foods, :reviews, :restaurants, :ingredients

  get "/login", to: "sessions#new"
  post"/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"





end
