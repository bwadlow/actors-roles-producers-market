Rails.application.routes.draw do
  resources :auditions
  resources :bookings
  resources :production_companies
  resources :actors
  resources :users, except: :show
  get '/actorprofile', to: 'actors#profile', as: 'actorprofile'
  get '/actorprofile/edit', to: 'actors#edit', as: 'edit_actorprofile'
  get '/productioncompanyprofile', to: 'production_companies#profile', as: 'productioncompanyprofile'
  get '/productioncompanyprofile/edit', to: 'production_companies#edit', as: 'edit_production_companyprofile'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end

  # post "/bookings", to: "bookings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
