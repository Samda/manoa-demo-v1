Rails.application.routes.draw do
  root to: 'landing#index'

  devise_for :user

  get 'home/index'
  get 'contact/index'
  get 'about/index'

  resources :users do
    resources :accounts
    resources :tours
  end
end
