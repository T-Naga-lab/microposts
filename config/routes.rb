Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
#  get    'relationships/follower'
#  get    'relationships/following'
  
  resources :users do
    member do
      get 'following'
      get 'follower'
    end
  end
  resources :microposts
  resources :relationships, only: [:create, :destroy]
end