Rails.application.routes.draw do
  devise_for :users
  resources :people, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  root 'home#index'
  get '/about', to: 'home#about'

  # Errors
  match "/402", to: "errors#forbidden", via: :all
  match "/404", to: "errors#not_found", via: :all
  # match "/422", to: "errors#internal_server_error", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
