Rails.application.routes.draw do
  # resources :onboarding, controller: 'onboardings'
  resources :onboardings
  # root to: 'visitors#index'
  root to: 'home#index'
  devise_for :users
  resources :users
end
