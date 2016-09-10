Rails.application.routes.draw do
  root 'houses#index'
  resources :users
  resources :sessions

  resources :houses do
    resources :requests
  end
end
