Rails.application.routes.draw do
  devise_for :users
  # devise_for :todoings
  # resources :todoings, only: %i[index create delete]
  resources :todoings
  root to: 'todoings#index'
end
