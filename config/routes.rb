Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  get "up" => "rails/health#show", as: :rails_health_check

  root 'activity#mine'

  get 'activity/mine'
  get 'activity/feed'

  resources :accounts
end
