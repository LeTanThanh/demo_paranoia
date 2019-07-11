Rails.application.routes.draw do
  get 'posts/show'

  root "users#index"

  resources :users, only: %i(show destroy)
  resources :posts, only: :show
end
