Rails.application.routes.draw do
  get 'cart/show'
  devise_for :users
  resources :products
  resources :order_items
  resources :cart, only: [:show]
  root "products#index" 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
