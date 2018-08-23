Rails.application.routes.draw do
  resources :auditions
  resources :bookings
  resources :production_companies
  resources :actors
  resources :users, except: :show
  # get '/actorprofile', to: 'actors#profile', as: 'actorprofile'
  # get '/actorprofile/edit', to: 'actors#edit', as: 'actor_edit_profile'
  # get '/production_companyprofile', to: 'production_companies#profile', as: 'production_companyprofile'
  # get '/production_companyprofile/edit', to: 'production_companies#edit', as: 'production_company_edit_profile'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/home', to: 'static#home'
end

  # post "/bookings", to: "bookings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
