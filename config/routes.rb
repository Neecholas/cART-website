Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [ :index, :show, :update ]
  get "/edit_profile", to: "users#edit_profile"
  resources :arts, only: [ :index, :show, :new, :create, :destroy]
  resources :commissions do
    resources :requests, only: [ :new, :create ]
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :requests, only: [ :show]
  resources :payments, only: [ :show, :new, :create ]
end
