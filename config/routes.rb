Rails.application.routes.draw do
  root "users#index"

  resources :users, only: %i(index show destroy)
  resources :posts, only: %i(index show destroy)

  namespace :admin do
    root "users#index"

    resources :users, only: %i(index show)
  end
end
