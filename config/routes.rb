Rails.application.routes.draw do
  root "schedules#index"
  get '/new', to: "schedules#new"
  get '/index', to: "schedules#index"
  get "/edit", to: "schedules#edit"

  post "/new", to: "schedules#create"
  
  resources :schedules
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
