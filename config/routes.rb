Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :users, only: [:show, :edit]
  resources :tweets, only: [:index, :new, :show, :destroy]
  resources :meals, only: [:index, :new, :show, :destroy]
  resources :trainings, only: [:index, :new, :show, :destroy]
  resources :processes, only: [:index, :new, :show, :destroy]
  resources :records, only: [:index]
  resources :in_takes, only: [:new, :show, :destroy]
  resources :out_takes, only: [:new, :show, :destroy]
  resources :checks, only: [:new, :show, :destroy]
end
