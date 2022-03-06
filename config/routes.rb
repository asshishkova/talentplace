Rails.application.routes.draw do
  devise_for :talents
  devise_for :places
  root to: 'pages#home'

  get 'login', to: 'pages#login', as: 'login'

  resources :talents, only: %i[index show edit update] do
    resources :bookings, only: %i[new create]
  end

  resources :places, only: %i[index show edit update]

  namespace :talent do
    get "dashboard", to: "pages#dashboard"
  end


  namespace :place do
    get "dashboard", to: "pages#dashboard"
  end

  resources :bookings, only: :index # this route is for checking only
  resources :promotions, only: :index # this route is for checking only

  resources :bookings, except: %i[new create]

end
