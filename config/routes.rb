Rails.application.routes.draw do
  devise_for :users
  root to: "reviews#index"
  resources :reviews, only: [:index, :new, :create]
  resources :users, only: [:show, :edit, :update]
end