Rails.application.routes.draw do
  root 'games#index'
  get '/login', to: 'sessions#new'
  resources :sessions, only: :create
end
