PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  get 'register', to: 'users#new'
  #get 'login', to: 'session#new'
  #get 'logout', to: 'session#destroy' 

  resources :posts, except: :destroy do
    resources :comments, only: :create
  end
  resources :categories, only: [:create, :new, :show]
  resources :users
end
