Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  post '/login', to: 'users#login'
  post '/signup', to: 'users#create'
  get '/getuser', to: 'users#getuser'
  resources :misses
  resources :replies
  resources :favorites

end
