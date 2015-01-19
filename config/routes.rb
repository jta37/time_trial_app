Rails.application.routes.draw do
  get 'articles/edit'

  get 'articles/index'

  get 'articles/new'

  get 'articles/show'

  root to: "sites#index"

  get '/', to: "sites#index"

  get '/about', to: "sites#about", as: "about"

  get '/contact', to: "sites#contact", as: "contact"

# get '/articles', to: "articles#index", as: "articles"
  
  resources :articles

  resources :users, except: [:new, :index]

  get '/sign_up', to: "users#new"
  resources :sessions, only: [:create, :destroy]

  get '/login', to: "sessions#new", as: "login"

end
