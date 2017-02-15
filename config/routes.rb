Rails.application.routes.draw do
  resources :analytics
  resources :account
  resources :developments
  resources :onboardings

  root to: 'home#index'

  devise_for :users, controllers: { sessions: 'users/sessions', confirmations: 'users/confirmations' }
  resources :users

  # static pages
  get "download" => 'download#index'

  # analytics 
  post 'track_clicks/:item' => 'analytics#track_clicks',  as: :track_clicks

end
