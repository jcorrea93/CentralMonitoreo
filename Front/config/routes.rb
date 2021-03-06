Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  resources :services
  resources :categories
  resources :makes
  resources :products

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
