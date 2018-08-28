Rails.application.routes.draw do
  get 'arts/show'
  get 'arts/new'
  get 'arts/create'
  get 'arts/destroy'
  devise_for :users
  root to: 'pages#home'

  resources :arts, only: [ :index, :show, :new, :create, :destroy]
  resources :commissions do
    resources :requests, only: [ :new, :create ]
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :requests, only: [ :show]
  resources :payments, only: [ :show, :new, :create ]
end
