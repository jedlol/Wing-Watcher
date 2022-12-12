Rails.application.routes.draw do
  devise_for :users

  root to: redirect('/home')

  resources :likes, only: [:create, :destroy]
  resources :dislikes, only: [:create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home', to: 'posts#index', as: 'home'
  get 'favorite', to: 'posts#favorite', as: 'favorite'

  get 'users', to: 'users#index', as: 'users'
  post 'users', to: 'users#create'
  get 'users/:id/settings', to: 'users#edit', as: 'settings'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'

  get 'users/:user_id/posts/new', to: 'posts#new', as:  'new_post'
  post 'users/:user_id/posts', to: 'posts#create'
  get 'users/:user_id/posts', to: 'posts#index', as: 'posts' 
  get 'users/:user_id/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  get 'users/:user_id/posts/:id', to: 'posts#show', as: 'detail_post'
  get 'users/:user_id/posts/:id/save', to: 'posts#save', as: 'save_post'
  patch 'users/:user_id/posts/:id', to: 'posts#update'
  delete 'users/:user_id/posts/:id', to: 'posts#destroy'
  

  get 'users/:user_id/posts/:post_id/comments', to: 'comments#index', as: 'post_comments'
  get 'users/:user_id/posts/:post_id/comments/new', to: 'comments#new', as: 'new_post_comment'
  post 'users/:user_id/posts/:post_id/comments', to: 'comments#create'
  get 'users/:user_id/posts/:post_id/comments/:id', to: 'comments#show', as: 'post_comment'
  patch 'users/:user_id/posts/:post_id/comments/:id', to: 'comments#update'
  delete 'users/:user_id/posts/:post_id/comments/:id', to: 'comments#destroy'
  put 'users/:user_id/posts/:post_id/comments/:id', to: 'comments#update'
  get 'users/:user_id/posts/:post_id/comments/:id/edit', to: 'comments#edit', as: 'edit_post_comment'

### JK ###
  # get 'users', to: 'users#index', as: 'users'
  # post 'users', to: 'users#create'
  # get 'users/:id/settings', to: 'users#edit', as: 'settings'
  # get 'users/:id', to: 'users#show', as: 'user'
  # patch 'users/:id', to: 'users#update'

  # post 'posts', to: 'posts#create'
  # get 'posts/new', to: 'posts#new', as:  'new_post'
  # get 'posts', to: 'posts#index', as: 'posts' 
  # get 'posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  # get 'posts/:id', to: 'posts#show', as: 'detail_post'
  # get 'posts/:id/save', to: 'posts#save', as: 'save_post'
  # patch 'posts/:id', to: 'posts#update'
  # delete 'posts/:id', to: 'posts#destroy'
  

  # get 'posts/:post_id/comments', to: 'comments#index', as: 'post_comments'
  # get 'posts/:post_id/comments/new', to: 'comments#new', as: 'new_post_comment'
  # post 'posts/:post_id/comments', to: 'comments#create'
  # get 'posts/:post_id/comments/:id', to: 'comments#show', as: 'post_comment'
  # patch 'posts/:post_id/comments/:id', to: 'comments#update'
  # delete 'posts/:post_id/comments/:id', to: 'comments#destroy'
  # put 'posts/:post_id/comments/:id', to: 'comments#update'
  # get 'posts/:post_id/comments/:id/edit', to: 'comments#edit', as: 'edit_post_comment'
end
