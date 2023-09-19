Rails.application.routes.draw do
  resources :packages
  resources :users
  
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  post "/packages/new", to: "packages#create"
  get "/packages", to: "packages#index"
  put "packages/:id", to: "packages#update"
  delete "/packages/:id", to: "packages#destroy"

  # The below was going to be for account management
  # get "/authorized", to: "sessions#show"
  # get "/dashboard", to: "users#show"

  # Defines the root path route ("/")
  # root "articles#index"
end
