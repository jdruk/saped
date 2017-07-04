Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :users
  resources :themes
  resources :courses
  resources :participations
  
  # dashboard
  get 'dashboard', to: 'home#dashboard', as: :dashboard
  get 'admin_dashboard', to: 'home#admin_dashboard', as: :admin_dashboard
end
