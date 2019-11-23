Rails.application.routes.draw do
root 'souvenirs#index'
get '/post', to: 'souvenirs#new'

#get '/login',to: 'sessions/new'
resources :souvenirs
resources :users
end
