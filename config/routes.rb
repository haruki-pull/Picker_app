Rails.application.routes.draw do
root 'souvenirs#index'

get '/post',   to: 'souvenirs#new'
get '/login',  to: 'sessions#new'
post '/login', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'
resources :souvenirs
resources :users
end
