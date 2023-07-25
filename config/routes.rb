Rails.application.routes.draw do
  devise_for :users
  root 'menus#index'
  resources :users
  resources :menus do
    resources :comments
  end
end
