Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :users, only: [:show, :edit]
  resources :tweets, only: [:index, :new, :show, :destroy] do
    resources :tweet_comments, only: [:create]
  end
  resources :meals, only: [:index, :new, :show, :destroy] do
    resources :meal_comments, only: [:create]
  end
  resources :trainings, only: [:index, :new, :show, :destroy]
  resources :processes, only: [:index, :new, :show, :destroy]
  resources :records, only: [:index]
  resources :in_takes, only: [:new, :show, :destroy]
  resources :out_takes, only: [:new, :show, :destroy]
  resources :checks, only: [:new, :show, :destroy]
end
