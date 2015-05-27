Rails.application.routes.draw do

  resources :pages, :users, :markers, :locations
  resources :comments, only: [:new, :create]
  get '/chat' => 'comments#new'

  get '/' => 'pages#index', :as => :root

  get '/about' => 'pages#about'

  get '/map' => 'markers#new'

  get '/api/markers' => 'markers#show'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_fail'
  get '/sign_out', to: 'sessions#destroy', as: :sign_out

  post '/locations' => 'locations#create'

  


end
