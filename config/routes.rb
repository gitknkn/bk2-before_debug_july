Rails.application.routes.draw do

  # get 'relationships/create'
  # get 'relationships/destroy'
  root 'home#top'
  get 'home/about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member #フォロー一覧作成用
    get :followers, on: :member #フォロワー一覧作成用
  end
  
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
end
