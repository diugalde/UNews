Rails.application.routes.draw do
  
    root 'pages#home'
    
    devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
    
    get '/articles/index', to: 'articles#index'

    get '/home', to: 'pages#home'
  
    get '/profile', to: 'pages#profile'
    
    get '/enter', to: 'users#enter'
    
    resources :users, except: [:new]
    
    get '/register', to: 'users#new'
    
    get '/newgplus', to: 'users#newgplus'
    
    resources :articles, except: [:new]
    
    get '/create_article', to: 'articles#new'
    
    get '/new_article', to: 'pages#new_article'
end