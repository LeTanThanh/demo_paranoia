Rails.application.routes.draw do
  root "users#index"

  resources :users, only: %i(show destroy)
  resources :posts, only: %i(show destroy)

  namespace :admin do
    root "users#index"

    resources :users, only: %i(index)
  end
end
