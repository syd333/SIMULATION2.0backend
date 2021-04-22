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
  get '/get/misses/:id', to: 'misses#show'
  post '/misses/new', to: 'misses#create'
  get 'favorites/', to: 'favorites#index'
  post 'replies/new', to: 'replies#create'
end

# instead of all "misses/index" particular area for geocoded