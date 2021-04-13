Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :misses
  resources :replies
  resources :favorites
  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  get '/getuser', to: 'users#getuser'
  get 'get/misses', to: 'misses#index'
end
