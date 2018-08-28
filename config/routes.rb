Rails.application.routes.draw do
  get 'arts/show'
  get 'arts/new'
  get 'arts/create'
  get 'arts/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
