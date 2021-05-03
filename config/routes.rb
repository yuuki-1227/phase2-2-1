Rails.application.routes.draw do
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create,:destroy]
  end

  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  get 'followed/:id' => 'relationships#followed', as: 'followed'
  get 'follower/:id' => 'relationships#follower', as: 'follower'

end