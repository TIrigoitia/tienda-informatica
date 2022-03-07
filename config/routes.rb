Rails.application.routes.draw do
  devise_for :users
  root "products#index" 
  resources :products
  resources :carts
  resources :cart_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end