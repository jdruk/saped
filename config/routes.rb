Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :themes
  resources :courses
  resources :participations
  
  # dashboard
  get 'dashboard', to: 'home#dashboard', as: :dashboard
  get 'admin_dashboard', to: 'home#admin_dashboard', as: :admin_dashboard
  get 'confirme_user/:id', to: 'home#confirme_user', as: :confirme_user
  get 'aprove_article/:id', to: 'home#aprove_article', as: :aprove_article
  get 'poster/', to: 'home#user_poster', as: :user_poster
  get 'geral/list/users/paid', to: 'home#geral', as: :users_confirmeds
  post 'negative_article/', to: 'home#negative_article', as: :negative_article
  
  get 'theme/list/:id', to: 'themes#list', as: :theme_list
  
  get 'expediente', to: 'home#expediente', as: :expediente
  get 'an', to: 'home#anais', as: :anais
end
