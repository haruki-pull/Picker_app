Rails.application.routes.draw do
root 'souvenirs#index'
get '/post', to: 'souvenirs#new'
#get '/login',to: 'sessions/new'
resources :souvenirs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
