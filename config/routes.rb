Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :plates, :foods, :reviews, :restaurants 

  get "/login", to: "session#new"

  get "/login", to: "session#create"

  get "/logout", to: "session#destroy"
end
