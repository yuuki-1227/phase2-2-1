Rails.application.routes.draw do
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update] do
    get 'following_users' => 'relationships#following_users', as: 'following_users'
    get 'follower_users' => 'relationships#follower_users', as: 'follower_users'
    post 'follow' => 'relationships#follow', as: 'follow' # フォローする
    post 'unfollow' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create,:destroy]
  end

  root to: 'homes#top'
  get 'home/about' => 'homes#about'




end