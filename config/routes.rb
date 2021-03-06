Rails.application.routes.draw do

  resources :pages, :users, :markers, :locations, :ammunitions
  resources :comments, only: [:new, :create]
  get '/chat' => 'comments#new'

  get '/' => 'pages#index', :as => :root

  # get '/about' => 'pages#about'

  get '/map' => 'markers#new'

  get '/options' => 'markers#users_markers_edit'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_fail'
  get '/sign_out', to: 'sessions#destroy', as: :sign_out

  post '/locations' => 'locations#create'

  #api routes

  get '/api/markers' => 'markers#show'

  get '/api/categories' => 'categories#show'

  get '/api/ammunition' => 'ammunitions#show'

  get '/api/locations' => 'locations#show'


end
