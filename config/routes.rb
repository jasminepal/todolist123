Rails.application.routes.draw do
  # resources :todoings, only: %i[index create delete]
  resources :todoings
  root to: 'todoings#index'
end
