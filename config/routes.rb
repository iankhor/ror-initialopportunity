Rails.application.routes.draw do
  resources :developments
  # resources :onboarding, controller: 'onboardings'
  resources :onboardings
  # root to: 'visitors#index'
  root to: 'home#index'
  devise_for :users, controllers: { sessions: 'users/sessions', confirmations: 'users/confirmations' }
  resources :users
end
