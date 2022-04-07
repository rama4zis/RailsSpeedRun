Rails.application.routes.draw do 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'home#index'


  # users 
  get '/user/register', to: 'users#register'
  post '/user/new', to: 'users#new'
  get '/user/login', to: 'users#login'
  post '/user/signin', to: 'users#signin'
  get '/user/logout', to: 'users#logout'
  get '/user/profile', to: 'users#profile'
end
