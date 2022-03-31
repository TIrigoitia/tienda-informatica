Rails.application.routes.draw do
  get 'admin/index'
  get 'admin/orders'
  get 'cart/confirmar'
  get 'cart/show'
  devise_for :users
  resources :products
  resources :order_items
  resources :cart
  root "products#index" 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
