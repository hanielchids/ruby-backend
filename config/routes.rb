Rails.application.routes.draw do
  resources :packages
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/authorized", to: "sessions#show"
  get "/dashboard", to: "users#show"
  post "/packages/new", to: "packages#create"
  get "/packages", to: "packages#show"

  # Defines the root path route ("/")
  # root "articles#index"
end
