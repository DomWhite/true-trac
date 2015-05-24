Rails.application.routes.draw do

  resources :pages, :users

  get '/' => 'pages#index', :as => :root

  get '/about' => 'pages#about'

  
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_fail'
  get '/sign_out', to: 'sessions#destroy', as: :sign_out

end
