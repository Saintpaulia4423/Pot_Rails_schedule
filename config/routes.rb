Rails.application.routes.draw do
  root "app#index"
  get '/new', to: "app#new"
  get '/index', to: "app#index"
  get "/edit", to: "app#edit"

  post "/new", to: "app#create"

  resources :schedules
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
