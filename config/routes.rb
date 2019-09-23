Rails.application.routes.draw do
  root 'trades#index'
  resources :trades, only: [:index, :create]
end
