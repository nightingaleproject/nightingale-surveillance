Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :surveillance_requests, only: [:index, :create]
  resources :records, only: [:create]
end
