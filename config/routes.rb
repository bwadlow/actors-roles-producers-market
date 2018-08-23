Rails.application.routes.draw do
  resources :auditions
  resources :bookings
  resources :production_companies
  resources :actors
  resources :users, except: :show
  get '/profile', to: 'users#show', as: 'profile'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy' as: 'logout'
end

  # post "/bookings", to: "bookings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
