Rails.application.routes.draw do
  get 'payment/index'
  post 'payment/pay'
  devise_for :users
  root to: 'pages#home'
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end

