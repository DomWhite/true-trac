Rails.application.routes.draw do

  resources :pages, :users

  get '/' => 'pages#index', :as => :root

  get '/about' => 'pages#about'

  get '/map' => 'maps#index'

  get '/api/markers' => 'markers#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_fail'
  get '/sign_out', to: 'sessions#destroy', as: :sign_out

  resources :comments, only: [:new, :create]
  get '/chat' => 'comments#new'

end
