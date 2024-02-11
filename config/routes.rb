Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root 'activity#mine'

  get 'activity/mine'
  get 'activity/feed'

end
