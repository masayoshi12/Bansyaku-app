Rails.application.routes.draw do
  devise_for :users
  root to: "bansyakus#index"
  resources :bansyakus, only: [:new, :create, :show, :edit, :update, :destroy]  
end
