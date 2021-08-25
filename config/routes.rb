Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # how to login
  post '/login', to: 'sessions#create'
  # how to log out
  delete '/logout', to: 'sessions#destroy'
  # how to stay logged in on refresh
  get '/me', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
