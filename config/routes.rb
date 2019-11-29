Rails.application.routes.draw do
  get 'sessions/new'
root 'souvenirs#index'
get '/post', to: 'souvenirs#new'

#get '/login',to: 'sessions/new'
resources :souvenirs
resources :users
end
