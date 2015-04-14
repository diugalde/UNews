Rails.application.routes.draw do
  
    root 'pages#home'
    get '/home', to: 'pages#home'
  
    get '/profile', to: 'pages#profile'
    
    get '/enter', to: 'pages#enter'
end