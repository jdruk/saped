Rails.application.routes.draw do
  resources :participations
  root 'home#index'

  devise_for :users
  resources :themes
  resources :courses
  
end
