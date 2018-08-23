Rails.application.routes.draw do
  resources :auditions
  resources :bookings
  resources :production_companies
  resources :actors
  resources :users, except: :show
end

  # post "/bookings", to: "bookings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
