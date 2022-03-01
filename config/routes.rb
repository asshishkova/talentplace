Rails.application.routes.draw do
  devise_for :talents
  devise_for :places
  root to: 'pages#home'
  resources :talents, only: %i[index show]
  resources :places, only: %i[index show]
end
