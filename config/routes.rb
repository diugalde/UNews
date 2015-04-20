Rails.application.routes.draw do
  
    root 'pages#home'
    
    devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

    get '/home', to: 'pages#home'
  
    get '/profile', to: 'pages#profile'
    
    get '/enter', to: 'users#enter'
    
    resources :users
    
    resources :articles
    
    post '/articles/state', to: 'articles#index_state'
    
    get '/articles/:id/like', to: 'articles#like'
end