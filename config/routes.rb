Rails.application.routes.draw do
root 'souvenirs#show'
get '/post', to: 'souvenirs#edit'
#get '/login',to: 'sessions/new'
resources :souvenirs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
