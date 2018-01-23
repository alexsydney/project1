Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # setup root for webpage
  root to: 'pages#home'

  post '/restaurants/search' => 'restaurants#search'

  # setup for login routes
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/login'  => 'session#guest'

  resources :users
  # setup for profile
  get '/profile' => 'users#profile'

  # nested routes for restaurants
  resources :restaurants do
    resources :images
    resources :reviews do
      resources :comments
    end
  end



end
