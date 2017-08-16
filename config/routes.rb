Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :surveillance_requests, only: [:create]
end
