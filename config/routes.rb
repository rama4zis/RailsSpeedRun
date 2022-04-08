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
  get '/user/edit', to: 'users#edit'
  post '/user/update', to: 'users#update'
  delete '/user/delete', to: 'users#delete'
  get '/user/profile/evaluation', to: 'users#show_evaluation'

  get '/siswa/index', to: 'users#index'

  # admin 
  get '/admin/login', to: 'admins#login'
  post '/admin/signin', to: 'admins#signin'
  get '/admin/logout', to: 'admins#logout'
  get '/admin/profile', to: 'admins#profile'
  get '/admin/input-nilai', to: 'admins#input_nilai'
  get '/admin/edit-nilai', to: 'admins#edit_nilai', as: 'edit_nilai'
  put '/admin/update-nilai', to: 'admins#update_nilai', as: 'update_nilai'
  post '/admin/insert-nilai', to: 'admins#insert_nilai'
end
