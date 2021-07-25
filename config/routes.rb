Rails.application.routes.draw do
  devise_for :users
  root to: "reviews#index"
  get 'reviews/search'
  resources :users, only: [:show, :edit, :update]
  resources :songs, only: [:show] do
    resources :reviews, only: [:index, :new, :create]
  end
end