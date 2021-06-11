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
  resources :trainings, only: [:index, :new, :show, :destroy] do
    resources :training_comments, only: [:create]
  end
  resources :processes, only: [:index, :new, :show, :destroy] do
    resources :success_comments, only: [:create]
  end
  resources :records, only: [:index]
  resources :in_takes, only: [:index, :new, :show, :destroy]
  resources :out_takes, only: [:index, :new, :show, :destroy]
  resources :checks, only: [:index, :new, :create, :show, :destroy]
end
