Rails.application.routes.draw do
  get 'schedule/create', to: 'schedule#create'
  get 'schedule/read', to: 'schedule#read'
  get 'schedule/update', to: 'schedule#update'
  get 'schedule/delete', to: 'schedule#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
