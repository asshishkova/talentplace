Rails.application.routes.draw do
  devise_for :talents
  devise_for :places
  root to: 'pages#home'
  resources :talents, only: %i[index show edit update]
  resources :places, only: %i[index show]

  namespace :talent do
    get "dashboard", to: "pages#dashboard"
  end

  resources :bookings, only: :index # this route is for checking only

end
