Rails.application.routes.draw do
  get 'reviews/index'
  devise_for :users
  root to: "bansyakus#index"
  resources :bansyakus, only: [:index, :new, :create, :show, :edit, :update, :destroy]do
    resources :reviews, only: :create
  end
  
  resources :users, only: :show

end
