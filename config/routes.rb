Rails.application.routes.draw do
  # get 'sessions/new'

  root to: "sites#index"

  get '/', to: "sites#index"

  get '/about', to: "sites#about", as: "about"

  get '/contact', to: "sites#contact", as: "contact"

# get '/articles', to: "articles#index", as: "articles"
  
  resources :articles

  resources :users, except: [:new, :index]

  get '/sign_up', to: "users#new"
  resources :sessions, only: [:create, :destroy]

  delete 'logout' => 'sessions#destroy'
  
  get '/login', to: "sessions#new", as: "login"
  # get '/logout', to: "sessions#destroy", as: "logout"

end
