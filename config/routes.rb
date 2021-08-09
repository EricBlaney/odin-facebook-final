Rails.application.routes.draw do
  devise_for :users, :controllers => { :regisrations => "my_registrations" , omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#index'

  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :show, :new, :edit, :destroy]
  resources :friend_requests, only: [:create, :destroy, :show, :index]
  resources :friendships, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :comments

  post 'posts/:id/edit', to: 'posts#update'
  post 'posts/new', to: 'posts#create'

  get 'likes', to: 'posts#index'
  post 'comments/new', to: 'comments#create'

  post 'users/:id', to: 'posts#create'





end
