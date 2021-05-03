Rails.application.routes.draw do
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update] do
    member do
      get :follower, :followed
    end
  end
    resource :relationships, only: [:create, :destroy]

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create,:destroy]
  end

  root to: 'homes#top'
  get 'home/about' => 'homes#about'

end