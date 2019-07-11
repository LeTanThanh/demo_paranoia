Rails.application.routes.draw do
  get 'posts/show'

  root "users#index"

  resources :users, only: :show
  resources :posts, only: :show
end
