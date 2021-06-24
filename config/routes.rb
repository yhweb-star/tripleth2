Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'charas', to: 'users/registrations#new_chara'
    post 'charas', to: 'users/registrations#create_chara'
    get 'people', to: 'users/registrations#new_person'
    post 'people', to: 'users/registrations#create_person'
  end
  
  resources :users, only: [:show, :edit] do
    member do
      get :tweet
      get :meal
      get :training
      get :success
    end
  end

  root 'homes#index'

  resources :tweets, only: [:index, :new, :create, :show, :destroy] do
    resources :tweet_comments, only: [:create]
    member do
      get :search
    end
  end

  resources :meals, only: [:index, :new, :create, :show, :destroy] do
    resources :meal_comments, only: [:create]
  end

  resources :trainings, only: [:index, :new, :create, :show, :destroy] do
    resources :training_comments, only: [:create]
  end

  resources :successes, only: [:index, :new, :create, :show, :destroy] do
    resources :success_comments, only: [:create]
  end

  resources :records, only: [:index]
  resources :in_takes, only: [:index, :new, :create, :show, :destroy]
  resources :out_takes, only: [:index, :new, :create, :show, :destroy]
  resources :checks, only: [:index, :new, :create, :show, :destroy]
end
