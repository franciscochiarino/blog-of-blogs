Rails.application.routes.draw do
  root 'welcome#index'

  get 'signup', to: 'users#new'
  resources :users, except: :new do
    resources :posts, exept: :index
  end

  get 'posts', to: 'posts#index'
  get 'users', to: 'users#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
