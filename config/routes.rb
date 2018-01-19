Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # setup root for webpage
  root to: 'pages#home'

  # setup for login routes
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/login'  => 'session#guest'

  resources :users
  # setup for profile
  get '/profile' => 'users#profile'

  resources :restaurants

  resources :images

  resources :reviews

  resources :comments

end
