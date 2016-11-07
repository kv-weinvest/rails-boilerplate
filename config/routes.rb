Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper
  root 'api/home#index'

  get '/api/users', to: 'api/users#index'

  # for wildcard endpoints
  match '*path' => 'api/api#render_404', via: [:get, :post, :put, :delete]
end